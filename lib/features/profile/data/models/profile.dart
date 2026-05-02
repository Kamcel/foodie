import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class Profile with _$Profile {
  const Profile._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory Profile({
    // F -- Fields
    required String id,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String homeCountry,
    String? homeState,
    String? homeCity,
    String? homeStreet,
    String? workCompany,
    String? workCity,
    String? workAddress,
  }) = _Profile;

  // M -- Map: fromJson
  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;

  factory Profile.empty({
    required String id,
    required String userId,
  }) {
    return Profile(
        id: id,
        userId: userId,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        homeCountry: '');
  }
}
