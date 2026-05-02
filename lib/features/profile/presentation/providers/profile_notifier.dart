import 'package:foodie/core/exceptions/app_exception.dart';
import 'package:foodie/core/models/location_model.dart';
import 'package:foodie/features/profile/data/enums.dart';
import 'package:foodie/features/profile/data/models/create_preference_request.dart';
import 'package:foodie/features/profile/data/models/create_profile_request.dart';
import 'package:foodie/features/profile/data/models/profile_state.dart';
import 'package:foodie/features/profile/data/models/update_user_request.dart';
import 'package:foodie/features/profile/data/services/profile_service.dart';
import 'package:foodie/features/profile/data/storage/preference_storage.dart';
import 'package:foodie/features/profile/data/storage/profile_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class ProfileNotifier extends _$ProfileNotifier {
  @override
  ProfileState build() => ProfileState.initial();

  void updateAvatarPath(String avatarPath) {
    state = state.copyWith(avatarPath: avatarPath);
  }

  void updateName(String name) {
    state = state.copyWith(name: name);
  }

  void updateUserName(String userName) {
    state = state.copyWith(userName: userName);
  }

  void updatePhone(String phone) {
    state = state.copyWith(phone: phone);
  }

  void updateWhatsapp(bool value) {
    state = state.copyWith(whatsappUpdates: value);
  }

  void updateCountry(LocationModel selectCountry) {
    state = state.copyWith(selectCountry: selectCountry);
  }

  void updateState(LocationModel selectState) {
    state = state.copyWith(selectState: selectState);
  }

  void updateCity(LocationModel selectCity) {
    state = state.copyWith(selectCity: selectCity);
  }

  void updateStreet(String street) {
    state = state.copyWith(street: street);
  }

  void updateOrderDescription(String orderDescription) {
    state = state.copyWith(orderDescription: orderDescription);
  }

  void updateDietary(List<DietaryPreference> dietaryPreference) {
    state = state.copyWith(dietaryPreference: dietaryPreference);
  }

  void updateAllergy(List<Allergy> allergies) {
    state = state.copyWith(allergies: allergies);
  }

  void updateSpiceLevel(SpiceLevel spiceLevel) {
    state = state.copyWith(spiceLevel: spiceLevel);
  }

  void updateWorkName(String workName) {
    state = state.copyWith(workName: workName);
  }

  void updateWorkState(String workState) {
    state = state.copyWith(workState: workState);
  }

  void updateZipcode(String zipCode) {
    state = state.copyWith(zipCode: zipCode);
  }

  void updateWorkAddress(String workAddress) {
    state = state.copyWith(workAddress: workAddress);
  }

  void updateCuisine(List<Cuisine> cuisines) {
    state = state.copyWith(cuisines: cuisines);
  }

  void updateOrder(bool value) {
    state = state.copyWith(orderUpdates: value);
  }

  void updateDeals(bool value) {
    state = state.copyWith(dealsUpdate: value);
  }

  void toggleDeliveryAddress() {
    state = state.copyWith(isHomeAddress: !state.isHomeAddress);
  }

  Future<void> saveProfile() async {
    if (!state.isAllValid) return;

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      //Call 1: update name, username, avatae
      await ProfileService().updateUser(UpdateUserRequest(
          name: state.name,
          userName: state.userName,
          avatarPath: state.avatarPath));

      // Call 2: create address profile
      final profile = await ProfileService().createProfile(CreateProfileRequest(
          country: state.selectCountry!.id,
          state: state.selectState!.id,
          city: state.selectCity!.id,
          homeStreet: state.selectState!.id,
          deliveryInstructions: state.orderDescription,
          workCompany: state.workName.isEmpty ? null : state.workName,
          workCity: state.workState.isEmpty ? null : state.workState,
          workZipCode: state.zipCode.isEmpty ? null : state.zipCode,
          workStreet: state.workAddress.isEmpty ? null : state.workAddress));

      //Call 3: Create preference
      final preference = await ProfileService().createPreferences(
          CreatePreferenceRequest(
              dietaryPrefernces: state.dietaryPreference,
              allergies: state.allergies,
              spiceLevel: state.spiceLevel,
              cuisines: state.cuisines,
              orderUpdate: state.orderUpdates,
              dealsUpdate: state.dealsUpdate,
              whatsappUpdates: state.whatsappUpdates));
      // Save to hive
      await ProfileStorage.instance.saveProfile(profile);
      await PreferenceStorage.instance.savePreference(preference);

      state = state.copyWith(isLoading: false, isSucess: true);
    } on AppException catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.userMessage);
    }
  }
}
