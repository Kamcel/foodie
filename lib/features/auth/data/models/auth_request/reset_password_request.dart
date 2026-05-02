import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_request.freezed.dart';
part 'reset_password_request.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class ResetPasswordRequest with _$ResetPasswordRequest {
  const ResetPasswordRequest._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory ResetPasswordRequest({
    // F -- Fields
    required String token,
    required String newPassword,
    required String confirmPassword,
  }) = _ResetPasswordRequest;

  // M -- Map: fromJson
  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
