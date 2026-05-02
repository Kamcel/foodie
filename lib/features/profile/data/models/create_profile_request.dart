import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_profile_request.freezed.dart';
part 'create_profile_request.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class CreateProfileRequest with _$CreateProfileRequest {
  const CreateProfileRequest._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory CreateProfileRequest(
      {
      // F -- Fields
      required String country,
      required String state,
      required String city,
      required String homeStreet,
      String? deliveryInstructions,
      String? workCompany,
      String? workCity,
      String? workZipCode,
      String? workStreet}) = _CreateProfileRequest;

  // M -- Map: fromJson
  factory CreateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateProfileRequestFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
