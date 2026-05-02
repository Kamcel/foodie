import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class LoginRequest with _$LoginRequest {
  const LoginRequest._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory LoginRequest({
    // F -- Fields
    required String email,
    required String password,
  }) = _LoginRequest;

  // M -- Map: fromJson
  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
