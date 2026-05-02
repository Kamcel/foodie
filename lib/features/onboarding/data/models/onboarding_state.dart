import 'package:foodie/features/onboarding/data/constants/onboarding_constants.dart';
import 'package:foodie/features/onboarding/data/models/onboarding_page.dart';
import 'package:foodie/features/onboarding/data/models/onboarding_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class OnboardingState with _$OnboardingState {
  const OnboardingState._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory OnboardingState({
    // F -- Fields
    required int currentPage,
    required OnboardingStatus status,
    required List<OnboardingPage> pages,
    required isDone,
  }) = _OnboardingState;

  // M -- Map: fromJson
  factory OnboardingState.initial() => OnboardingState(
      currentPage: 0,
      status: OnboardingStatus.notStarted,
      pages: onboardingData,
      isDone: false);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
