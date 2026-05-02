import 'package:dio/dio.dart';
import 'package:foodie/core/network/interceptors/auth_interceptor.dart';
import 'package:foodie/core/network/interceptors/error_interceptor.dart';
import 'package:foodie/core/network/interceptors/logging_interceptor.dart';
import 'package:foodie/core/network/interceptors/retry_interceptor.dart';

class ApiService {
  ApiService._();
  static final ApiService instance = ApiService._();

  late final Dio _dio;
  Dio get dio => _dio;

  void init({
    required String baseUrl,
    Duration connectTimeout = const Duration(seconds: 30),
    Duration receiveTimeout = const Duration(seconds: 30),
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _dio.interceptors.addAll([
      AuthInterceptor(),
      RetryInterceptor(dio: _dio),
      ErrorInterceptor(),
      LoggingInterceptor(), // always last
    ]);
  }
}
