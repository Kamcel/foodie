import 'package:dio/dio.dart';
import 'package:foodie/core/exceptions/app_exception.dart';
import 'package:foodie/core/network/api_service.dart';
import 'package:foodie/features/dish/data/models/dish.dart';

class DishService {
  final Dio _dio = ApiService.instance.dio;
  static const String _path =
      'https://6a03b7d22afe8349b4b571b3.mockapi.io/api/v1/dishes';

  // ── GET ALL ─────────────────────────────────────────────
  Future<List<Dish>> getAll({
    int page = 1,
    int limit = 20,
    Map<String, dynamic>? filters,
  }) async {
    try {
      // G -- Guard: validate before request
      // P -- Prep: build query params
      final response = await _dio.get(
        _path,
        queryParameters: {'page': page, 'limit': limit, ...?filters},
      );
      // T -- Translate  M -- Map
      final List data = response.data['data'] ?? response.data;
      return data.map((e) => Dish.fromJson(e as Map<String, dynamic>)).toList();
    } on DioException catch (e) {
      // S -- Status: map to typed exception
      throw _mapError(e);
    }
  }

  // ── GET ONE ─────────────────────────────────────────────
  Future<Dish> getOne(String id) async {
    try {
      final response = await _dio.get('$_path/$id');
      final data = response.data['data'] ?? response.data;
      return Dish.fromJson(data as Map<String, dynamic>);
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
