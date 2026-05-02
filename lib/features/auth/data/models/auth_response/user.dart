import 'package:foodie/features/auth/data/models/auth_provider.dart';
import 'package:foodie/features/auth/data/models/auth_response/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum SubScriptionType { basic, monthly, yearly, pro, lifetime }

// E -- Entity: ClassName represents a description
@freezed
abstract class User with _$User {
  const User._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory User({
    // F -- Fields
    required String id,
    required String name,
    @Default('') String email,
    String? phone,
    String? avatar,
    Address? address,
    AuthProvider? socialProvider,
    required bool isActive,
    required DateTime createdAt,
    DateTime? updatedAt,
    @Default(SubScriptionType.basic) SubScriptionType subScriptionType,
    @Default('') String userName,
  }) = _User;

  // M -- Map: fromJson
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;

  factory User.createLocal({
    required String id,
    required String name,
    required String email,
  }) {
    return User(
        id: id,
        name: name,
        email: email,
        userName: email.split('@').first,
        isActive: true,
        createdAt: DateTime.now());
  }
}
