import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class LocationModel with _$LocationModel {
  const LocationModel._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory LocationModel({
    // F -- Fields
    required String id,
    required String name,
  }) = _LocationModel;

  // M -- Map: fromJson
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
