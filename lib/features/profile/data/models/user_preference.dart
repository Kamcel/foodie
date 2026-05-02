import 'package:foodie/features/profile/data/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preference.freezed.dart';
part 'user_preference.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class UserPreference with _$UserPreference {
  const UserPreference._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory UserPreference({
    // F -- Fields
    required String id,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default([]) List<DietaryPreference> dietaryPreferences,
    @Default([]) List<Allergy> allergies,
    @Default([]) List<Cuisine> cuisines,
    @Default(SpiceLevel.mild) SpiceLevel spicelevel,
    @Default(false) bool whatsappUpdates,
    @Default(true) bool orderUpdates,
    @Default(false) bool dealsUpdates,
  }) = _UserPreference;

  // M -- Map: fromJson
  factory UserPreference.fromJson(Map<String, dynamic> json) =>
      _$UserPreferenceFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
