import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_request.freezed.dart';
part 'forgot_password_request.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class ForgotPasswordRequest with _$ForgotPasswordRequest {
  const ForgotPasswordRequest._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory ForgotPasswordRequest({
    // F -- Fields
    required String email,
  }) = _ForgotPasswordRequest;

  // M -- Map: fromJson
  factory ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordRequestFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
