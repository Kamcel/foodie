import 'package:foodie/core/exceptions/app_exception.dart';
import 'package:foodie/features/auth/data/models/auth_request/forgot_password_request.dart';
import 'package:foodie/features/auth/data/models/auth_request/login_request.dart';
import 'package:foodie/features/auth/data/models/auth_request/otp_request.dart';
import 'package:foodie/features/auth/data/models/auth_request/register_request.dart';
import 'package:foodie/features/auth/data/models/auth_request/reset_password_request.dart';
import 'package:foodie/features/auth/data/models/auth_state.dart';
import 'package:foodie/features/auth/data/models/otp_args.dart';
import 'package:foodie/features/auth/data/services/auth_service.dart';
import 'package:foodie/features/auth/data/storage/auth_storage.dart';
import 'package:foodie/features/auth/data/storage/user_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

// P -- Provider type: Notifier (mutable, async state)
@riverpod
class AuthNotifier extends _$AuthNotifier {
  //services
  final _api = AuthApiService();
  final _auth = AuthStorage.instance;
  final _user = UserStorage.instance;

  @override
  AuthState build() {
    // Checkif user is alreay logged in from previous session
    return _auth.hasTokens
        ? AuthState.authenticated(_user.getUser()!)
        : const AuthState.unauthenticated();
  }

  // Login
  Future<void> login({
    required String email,
    required String password,
  }) async {
    //Tell Ui loading
    state = const AuthState.loading();
    try {
      // Call server
      final response = await _api.login(
        LoginRequest(email: email, password: password),
      );
      // Save tokens and user to Hive
      await _auth.saveTokens(
          accessToken: response.accessToken,
          refreshToken: response.refreshToken);
      await _user.saveUser(response.user);
      // Tell Ui we are authenticated
      state = AuthState.authenticated(response.user);
    } catch (e) {
      //Tell Ui whats wrong
      final message = e is AppException
          ? e.when(
              noInternet: () => 'No internet Connection',
              unauthorized: () => 'Invalid credentials',
              badRequest: (message) => message,
              conflict: (message) => message,
              serverError: () => 'Server error, try again',
              unknown: (message) => message,
              forbidden: () => 'Access Denied',
              notFound: () => 'Not found',
              tooManyRequests: () => 'Too many attempts, slow down',
              validation: (message) => message,
            )
          : 'Somthing went wrong';

      state = AuthState.error(message: message);
    }
  }

  // Register
  Future<void> register({
    required String email,
    required String password,
  }) async {
    state = const AuthState.loading();
    try {
      final response = await _api.register(
        RegisterRequest(email: email, password: password),
      );
      await _auth.saveTokens(
          accessToken: response.accessToken,
          refreshToken: response.refreshToken);
      await _user.saveUser(response.user);
      state = AuthState.authenticated(response.user);
    } catch (e) {
      final message = e is AppException
          ? e.when(
              noInternet: () => 'No internet Connection',
              unauthorized: () => 'Invalid credentials',
              badRequest: (message) => message,
              conflict: (message) => message,
              serverError: () => 'Server error, try again',
              unknown: (message) => message,
              forbidden: () => 'Access Denied',
              notFound: () => 'Not found',
              tooManyRequests: () => 'Too many attempts, slow down',
              validation: (message) => message,
            )
          : 'Somthing went wrong';

      state = AuthState.error(message: message);
    }
  }

  // Forgot Password
  Future<void> forgotPassword({
    required String email,
  }) async {
    state = const AuthState.loading();

    try {
      await _api.forgotPassword(
        ForgotPasswordRequest(email: email),
      );
      state = const AuthState.otpSent();
      state = AuthState.unauthenticated();
    } catch (e) {
      final message = e is AppException
          ? e.when(
              noInternet: () => 'No internet Connection',
              unauthorized: () => 'Invalid credentials',
              badRequest: (message) => message,
              conflict: (message) => message,
              serverError: () => 'Server error, try again',
              unknown: (message) => message,
              forbidden: () => 'Access Denied',
              notFound: () => 'Not found',
              tooManyRequests: () => 'Too many attempts, slow down',
              validation: (message) => message,
            )
          : 'Somthing went wrong';

      state = AuthState.error(message: message);
    }
  }

  //Verify Otp
  Future<void> otpVerify({
    required String code,
    required OtpFlow flow,
  }) async {
    state = const AuthState.loading();
    try {
      await _api.otpVerified(OtpRequest(code: code));
      state = const AuthState.otpVerified();
    } catch (e) {
      final message = e is AppException
          ? e.when(
              noInternet: () => 'No internet Connection',
              unauthorized: () => 'Invalid credentials',
              badRequest: (message) => message,
              conflict: (message) => message,
              serverError: () => 'Server error, try again',
              unknown: (message) => message,
              forbidden: () => 'Access Denied',
              notFound: () => 'Not found',
              tooManyRequests: () => 'Too many attempts, slow down',
              validation: (message) => message,
            )
          : 'Somthing went wrong';

      state = AuthState.error(message: message);
    }
  }

  //Reset Password
  Future<void> resetPassword({required String newPassword}) async {
    state = const AuthState.loading();
    try {
      await _api.resetPassword(
        ResetPasswordRequest(
            token: _auth.accessToken ?? '',
            newPassword: newPassword,
            confirmPassword: newPassword),
      );
      state = const AuthState.unauthenticated();
    } catch (e) {
      final message = e is AppException
          ? e.when(
              noInternet: () => 'No internet Connection',
              unauthorized: () => 'Invalid credentials',
              badRequest: (message) => message,
              conflict: (message) => message,
              serverError: () => 'Server error, try again',
              unknown: (message) => message,
              forbidden: () => 'Access Denied',
              notFound: () => 'Not found',
              tooManyRequests: () => 'Too many attempts, slow down',
              validation: (message) => message,
            )
          : 'Somthing went wrong';

      state = AuthState.error(message: message);
    }
  }

  // Logout
  Future<void> logout() async {
    await _auth.clear();
    await _user.clear();
    state = const AuthState.unauthenticated();
  }
}
