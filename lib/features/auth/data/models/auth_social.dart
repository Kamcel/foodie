import 'package:foodie/features/auth/data/models/auth_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_social.freezed.dart';
part 'auth_social.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class AuthSocial with _$AuthSocial {
  const AuthSocial._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory AuthSocial({
    // F -- Fields
    required AuthProvider provider,
    required String token,
    String? idToken,
  }) = _AuthSocial;

  // M -- Map: fromJson
  factory AuthSocial.fromJson(Map<String, dynamic> json) =>
      _$AuthSocialFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
