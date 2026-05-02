import 'package:dio/dio.dart';
import 'package:foodie/core/exceptions/app_exception.dart';
import 'package:foodie/core/network/api_service.dart';
import 'package:foodie/features/auth/data/models/auth_request/forgot_password_request.dart';
import 'package:foodie/features/auth/data/models/auth_request/login_request.dart';
import 'package:foodie/features/auth/data/models/auth_request/otp_request.dart';
import 'package:foodie/features/auth/data/models/auth_request/register_request.dart';
import 'package:foodie/features/auth/data/models/auth_request/reset_password_request.dart';
import 'package:foodie/features/auth/data/models/auth_response/auth_response.dart';
import 'package:foodie/features/auth/data/models/auth_social.dart';

class AuthApiService {
  final Dio _dio = ApiService.instance.dio;

  // ── LOGIN ────────────────────────────────────────────────
  Future<AuthResponse> login(LoginRequest request) async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: request.toJson(),
      );
      return AuthResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // ── REGISTER ────────────────────────────────────────────
  Future<AuthResponse> register(RegisterRequest request) async {
    try {
      final response = await _dio.post(
        '/auth/register',
        data: request.toJson(),
      );
      return AuthResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // ── SOCIAL AUTH ────────────────────────────────────────────
  Future<AuthResponse> socialAuth(AuthSocial request) async {
    try {
      final response = await _dio.post(
        '/auth/social',
        data: request.toJson(),
      );
      return AuthResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // ── LOGOUT ──────────────────────────────────────────────
  Future<void> logout() async {
    try {
      await _dio.post('/auth/logout');
    } on DioException catch (_) {
      // ignore logout errors -- we clear local tokens regardless
    }
  }

  // ── FORGOT PASSWORD ──────────────────────────────────────────────
  Future<void> forgotPassword(ForgotPasswordRequest request) async {
    try {
      await _dio.post(
        '/auth/forgot-password',
        data: request.toJson(),
      );
      //return AuthResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // ── RESET PASSWORD ──────────────────────────────────────────────
  Future<void> resetPassword(ResetPasswordRequest request) async {
    try {
      await _dio.post(
        '/auth/reset-password',
        data: request.toJson(),
      );
      // return AuthResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // ── REFRESH TOKEN ────────────────────────────────────────
  Future<AuthResponse> refreshToken(String refreshToken) async {
    try {
      final response = await _dio.post(
        '/auth/refresh',
        data: {'refresh_token': refreshToken},
      );
      final data = response.data['data'] ?? response.data;
      return AuthResponse.fromJson(data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

// ── VERIFY OTP ────────────────────────────────────────
  Future<void> otpVerified(OtpRequest request) async {
    try {
      await _dio.post('/auth/otp-verify', data: request.toJson());
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  AppException _handleError(DioException e) {
    if (e.type == DioExceptionType.connectionError ||
        e.type == DioExceptionType.connectionTimeout) {
      return const AppException.noInternet();
    }

    final data = e.response?.data;
    final msg = data is Map ? data['message']?.toString() : e.message;

    return switch (e.response?.statusCode) {
      400 => AppException.badRequest(msg ?? 'Invalid Credential'),
      401 => const AppException.unauthorized(),
      403 => const AppException.forbidden(),
      404 => const AppException.notFound(),
      409 => AppException.conflict(msg ?? 'User already exist'),
      429 => const AppException.tooManyRequests(),
      500 => const AppException.serverError(),
      _ => AppException.unknown(msg ?? 'Something went wrong')
    };
  }
}
