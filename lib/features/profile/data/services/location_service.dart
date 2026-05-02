import 'package:dio/dio.dart';
import 'package:foodie/core/exceptions/app_exception.dart';
import 'package:foodie/core/models/location_model.dart';
import 'package:foodie/core/network/api_service.dart';

class LocationService {
  final Dio _dio = ApiService.instance.dio;

  // ── GET ALL COUNTRIES ─────────────────────────────────────────────
  Future<List<LocationModel>> fetchCountries() async {
    try {
      final response = await _dio.get('/locations/countries');
      final List data = response.data['data'] ?? response.data;
      return data.map((json) => LocationModel.fromJson(json)).toList();
    } on DioException catch (e) {
      throw _mapError(e, 'Failed to load countries');
    }
  }

  // ── GET STATES FOR A COUNTRY ─────────────────────────────────────
  Future<List<LocationModel>> fetchStates(String countryId) async {
    try {
      final response = await _dio.get('/locations/states/$countryId');
      final List data = response.data['data'] ?? response.data;
      return data.map((json) => LocationModel.fromJson(json)).toList();
    } on DioException catch (e) {
      throw _mapError(e, 'Failed to load states');
    }
  }

  // ── GET CITIES FOR A STATE ───────────────────────────────────────
  Future<List<LocationModel>> fetchCities(String stateId) async {
    try {
      final response = await _dio.get('/locations/cities/$stateId');
      final List data = response.data['data'] ?? response.data;
      return data.map((json) => LocationModel.fromJson(json)).toList();
    } on DioException catch (e) {
      throw _mapError(e, 'Failed to load cities');
    }
  }

  // ── ERROR HANDLER WITH AppException ───────────────────────────────
  AppException _mapError(DioException e, String defaultMessage) {
    // If ErrorInterceptor already wrapped it
    if (e.error is AppException) {
      return e.error as AppException;
    }

    // Network errors
    if (e.type == DioExceptionType.connectionError ||
        e.type == DioExceptionType.connectionTimeout) {
      return const AppException.noInternet();
    }

    // Try to get message from response
    final data = e.response?.data;
    final message = data is Map ? data['message']?.toString() : null;

    // Map HTTP status codes
    switch (e.response?.statusCode) {
      case 400:
        return AppException.badRequest(message ?? 'Invalid request');
      case 401:
        return const AppException.unauthorized();
      case 403:
        return const AppException.forbidden();
      case 404:
        return const AppException.notFound();
      case 500:
        return const AppException.serverError();
      default:
        return AppException.unknown(message ?? defaultMessage);
    }
  }
}
