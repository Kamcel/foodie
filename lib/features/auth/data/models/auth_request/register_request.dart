import 'package:foodie/features/auth/data/models/auth_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request.freezed.dart';
part 'register_request.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class RegisterRequest with _$RegisterRequest {
  const RegisterRequest._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory RegisterRequest(
      {
      // F -- Fields
      required String email,
      required String password,
      String? name,
      String? phone,
      AuthProvider? socialProvider,
      String? socialToken,
      String? countryCode}) = _RegisterRequest;

  // M -- Map: fromJson
  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
