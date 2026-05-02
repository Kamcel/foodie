import 'package:dio/dio.dart';

// R -- Retry: auto-retry on network failure with exponential backoff
class RetryInterceptor extends Interceptor {
  final Dio dio;
  final int maxRetries;
  final Duration retryDelay;

  RetryInterceptor({
    required this.dio,
    this.maxRetries = 3,
    this.retryDelay = const Duration(seconds: 1),
  });

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final attempt = err.requestOptions.extra['retryCount'] as int? ?? 0;
    final isNetworkError = err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.connectionError;

    if (isNetworkError && attempt < maxRetries) {
      err.requestOptions.extra['retryCount'] = attempt + 1;
      await Future.delayed(retryDelay * (attempt + 1));
      try {
        handler.resolve(await dio.fetch(err.requestOptions));
        return;
      } catch (_) {}
    }
    handler.next(err);
  }
}
