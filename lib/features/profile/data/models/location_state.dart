import 'package:foodie/core/models/location_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_state.freezed.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class LocationState with _$LocationState {
  const LocationState._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory LocationState({
    // F -- Fields

    //Lists with empty defaults
    @Default([]) List<LocationModel> countries,
    @Default([]) List<LocationModel> states,
    @Default([]) List<LocationModel> cities,

    //Selected values(null by default)
    LocationModel? selectedCountry,
    LocationModel? selectedState,
    LocationModel? selectedCity,

    //Loading flags per operation
    @Default(false) bool isLoadingCountries,
    @Default(false) bool isLoadingStates,
    @Default(false) bool isLoadingCities,

    //Error message
    String? errorMessage,
  }) = _LocationState;

  // M -- Map: fromJson
  factory LocationState.initial() => const LocationState();

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
