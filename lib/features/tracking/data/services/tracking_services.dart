import 'package:dio/dio.dart';
import 'package:foodie/core/exceptions/app_exception.dart';
import 'package:foodie/core/network/api_service.dart';
import 'package:foodie/features/tracking/data/models/tracking.dart';

class TrackingService {
  final Dio _dio = ApiService.instance.dio;
  static const String _path = '/endpoint';

  Future<Tracking> fetchTracking(String orderId) async {
    try {
      final response = await _dio.get('$_path/$orderId');
      final data = response.data['data'] ?? response.data;
      return Tracking.fromJson(data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _mapError(e);
    }
  }

  // S -- Status: error mapping
  AppException _mapError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      return const AppException.connectionTimeout();
    }
    if (e.type == DioExceptionType.connectionError) {
      return const AppException.noInternet();
    }
    final data = e.response?.data;
    final msg = data is Map ? data['message']?.toString() : e.message;
    return switch (e.response?.statusCode) {
      400 => AppException.badRequest(msg ?? 'Bad request'),
      401 => const AppException.unauthorized(),
      403 => const AppException.forbidden(),
      404 => const AppException.notFound(),
      500 => const AppException.serverError(),
      _ => AppException.unknown(msg ?? 'Something went wrong'),
    };
  }
}
