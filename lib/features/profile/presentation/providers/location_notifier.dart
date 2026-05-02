import 'package:foodie/core/exceptions/app_exception.dart';
import 'package:foodie/core/models/location_model.dart';
import 'package:foodie/features/profile/data/models/location_state.dart';
import 'package:foodie/features/profile/data/services/location_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_notifier.g.dart';

@riverpod
class LocationNotifier extends _$LocationNotifier {
  late final LocationService _locationService;

  @override
  LocationState build() {
    _locationService = LocationService();
    Future.microtask(() => loadCountries());
    return LocationState.initial();
  }

  // ── LOAD COUNTRIES ─────────────────────────────────────
  Future<void> loadCountries() async {
    state = state.copyWith(
      isLoadingCountries: true,
      errorMessage: null,
    );

    try {
      final countries = await _locationService.fetchCountries();
      state = state.copyWith(
        countries: countries,
        isLoadingCountries: false,
      );
    } on AppException catch (e) {
      state = state.copyWith(
        isLoadingCountries: false,
        errorMessage: e.userMessage,
      );
    }
  }

  // ── SELECT COUNTRY ─────────────────────────────────────
  Future<void> selectCountry(LocationModel selectedCountry) async {
    state = state.copyWith(
      selectedCountry: selectedCountry,
      states: [],
      cities: [],
      selectedState: null,
      selectedCity: null,
    );

    await loadStates(selectedCountry.id);
  }

  // ── LOAD STATES ────────────────────────────────────────
  Future<void> loadStates(String countryId) async {
    state = state.copyWith(
      isLoadingStates: true,
      errorMessage: null,
    );

    try {
      final states = await _locationService.fetchStates(countryId);
      state = state.copyWith(
        states: states,
        isLoadingStates: false,
      );
    } on AppException catch (e) {
      state = state.copyWith(
        isLoadingStates: false,
        errorMessage: e.userMessage,
      );
    }
  }

  // ── SELECT STATE ───────────────────────────────────────
  Future<void> selectState(LocationModel selectedState) async {
    state = state.copyWith(
      selectedState: selectedState,
      cities: [],
      selectedCity: null,
    );

    await loadCities(selectedState.id);
  }

  // ── LOAD CITIES ────────────────────────────────────────
  Future<void> loadCities(String stateId) async {
    state = state.copyWith(
      isLoadingCities: true,
      errorMessage: null,
    );

    try {
      final cities = await _locationService.fetchCities(stateId);
      state = state.copyWith(
        cities: cities,
        isLoadingCities: false,
      );
    } on AppException catch (e) {
      state = state.copyWith(
        isLoadingCities: false,
        errorMessage: e.userMessage,
      );
    }
  }

  // ── SELECT CITY ────────────────────────────────────────
  void selectCity(LocationModel selectedCity) {
    state = state.copyWith(selectedCity: selectedCity);
  }
}
