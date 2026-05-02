import 'package:foodie/features/auth/data/models/auth_response/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

// LSEE -- Loading, Success, Empty, Error
@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(User user) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error({required String message}) = _Error;
  const factory AuthState.otpSent() = _otpSent;
  const factory AuthState.otpVerified() = _otpVerified;
}
