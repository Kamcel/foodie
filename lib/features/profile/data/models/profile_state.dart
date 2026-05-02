import 'package:foodie/core/models/location_model.dart';
import 'package:foodie/features/profile/data/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class ProfileState with _$ProfileState {
  const ProfileState._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory ProfileState({
    // F -- Fields
    // Step 1
    @Default('') String name,
    @Default('') String userName,
    @Default('') String avatarPath,
    //Step 2
    @Default('') String phone,
    @Default(false) bool whatsappUpdates,
    //Step 3
    LocationModel? selectCountry,
    LocationModel? selectState,
    LocationModel? selectCity,
    @Default('') String street,
    @Default('') String orderDescription,
    @Default(true) bool isHomeAddress,

    //Step 4
    //@Default(enumName.value) enumName enumNameInLowercase
    @Default([]) List<DietaryPreference> dietaryPreference,
    @Default([]) List<Allergy> allergies,
    SpiceLevel? spiceLevel,
    //Step 5
    @Default('') String workName,
    @Default('') String workState,
    @Default('') String zipCode,
    @Default('') String workAddress,
    //Step 6
    @Default([]) List<Cuisine> cuisines,
    @Default(false) bool orderUpdates,
    @Default(false) bool dealsUpdate,
    //Standard
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    String? errorMessage,
  }) = _ProfileState;

  // M -- Map: fromJson
  factory ProfileState.initial() => ProfileState();

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;

  bool get isAllValid =>
      name.isNotEmpty &&
      userName.isNotEmpty &&
      phone.isNotEmpty &&
      selectCountry != null &&
      selectState != null &&
      selectCity != null &&
      spiceLevel != null &&
      cuisines.length >= 3;
}
