import 'package:foodie/features/auth/data/models/auth_response/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class AuthResponse with _$AuthResponse {
  const AuthResponse._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory AuthResponse({
    // F -- Fields
    required String accessToken,
    required String refreshToken,
    required User user,
  }) = _AuthResponse;

  // M -- Map: fromJson
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
