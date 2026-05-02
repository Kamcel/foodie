import 'package:foodie/features/profile/data/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_preference_request.freezed.dart';
part 'create_preference_request.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class CreatePreferenceRequest with _$CreatePreferenceRequest {
  const CreatePreferenceRequest._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory CreatePreferenceRequest(
      {
      // F -- Fields
      required List<DietaryPreference> dietaryPrefernces,
      @Default([]) List<Allergy> allergies,
      SpiceLevel? spiceLevel,
      @Default([]) List<Cuisine> cuisines,
      @Default(false) bool orderUpdate,
      @Default(false) bool dealsUpdate,
      @Default(false) bool whatsappUpdates}) = _CreatePreferenceRequest;

  // M -- Map: fromJson
  factory CreatePreferenceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePreferenceRequestFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
