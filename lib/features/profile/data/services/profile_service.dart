import 'package:dio/dio.dart';
import 'package:foodie/core/exceptions/app_exception.dart';
import 'package:foodie/core/network/api_service.dart';
import 'package:foodie/features/auth/data/models/auth_response/user.dart';
import 'package:foodie/features/profile/data/models/create_preference_request.dart';
import 'package:foodie/features/profile/data/models/create_profile_request.dart';
import 'package:foodie/features/profile/data/models/profile.dart';
import 'package:foodie/features/profile/data/models/update_user_request.dart';
import 'package:foodie/features/profile/data/models/user_preference.dart';

class ProfileService {
  final Dio _dio = ApiService.instance.dio;
  // static const String _path = '/endpoint';

  // Upadte name, username, avatar
  Future<User> updateUser(UpdateUserRequest request) async {
    try {
      final response = await _dio.patch(
        '/user',
        data: request.toJson(),
      );
      return User.fromJson(response.data);
    } on DioException catch (e) {
      throw _mapError(e);
    }
  }

  // Create home + work address profile
  Future<Profile> createProfile(CreateProfileRequest request) async {
    try {
      final response = await _dio.post(
        '/profile',
        data: request.toJson(),
      );
      return Profile.fromJson(response.data);
    } on DioException catch (e) {
      throw _mapError(e);
    }
  }

  // Creates dietary, allergy, cuisine, notification preference
  Future<UserPreference> createPreferences(
      CreatePreferenceRequest request) async {
    try {
      final response = await _dio.post(
        '/preferences',
        data: request.toJson(),
      );
      return UserPreference.fromJson(response.data);
    } on DioException catch (e) {
      throw _mapError(e);
    }
  }

  // S -- Status: error mapping
  AppException _mapError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      //return const AppException.connectionTimeout();
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
