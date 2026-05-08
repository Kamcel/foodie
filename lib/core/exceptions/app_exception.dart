import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException {
  const AppException._();
  const factory AppException.unauthorized() = _Unauthorized;
  const factory AppException.notFound() = _NotFound;
  const factory AppException.conflict(String message) = _Conflict;
  const factory AppException.badRequest(String message) = _BadRequest;
  const factory AppException.validation(String message) = _Validation;
  const factory AppException.serverError() = _ServerError;
  const factory AppException.noInternet() = _NoInternet;
  const factory AppException.unknown(String message) = _Unknown;
  const factory AppException.tooManyRequests() = _TooManyRequest;
  const factory AppException.forbidden() = _Forbidden;

  //User friendly message
  String get userMessage {
    return when(
      unauthorized: () => 'Session expired. Please try again.',
      notFound: () => 'User not found',
      conflict: (message) => message,
      badRequest: (message) => message,
      validation: (message) => message,
      serverError: () => 'Server error. Try again later',
      noInternet: () => 'No internet connection',
      unknown: (message) => message,
      tooManyRequests: () => 'Too many request. Please try again later',
      forbidden: () => 'Request is forbidden',
    );
  }
}
