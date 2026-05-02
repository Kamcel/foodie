import 'package:dio/dio.dart';
import '../../exceptions/app_exception.dart';

// S -- Status: map server errors to typed AppException
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final appEx = _map(err);
    handler.next(err.copyWith(error: appEx));
  }

  AppException _map(DioException err) {
    return switch (err.response?.statusCode) {
      400 => const AppException.badRequest('Bad request'),
      401 => const AppException.unauthorized(),
      403 => const AppException.forbidden(),
      404 => const AppException.notFound(),
      429 => const AppException.tooManyRequests(),
      500 => const AppException.serverError(),
      _ => AppException.unknown(err.message ?? 'Unknown error'),
    };
  }
}
