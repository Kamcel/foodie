import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_page.freezed.dart';
part 'onboarding_page.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class OnboardingPage with _$OnboardingPage {
  const OnboardingPage._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory OnboardingPage({
    // F -- Fields
    required String id,
    required String animationPath,
    required String title,
    required String subTitle,
  }) = _OnboardingPage;

  // M -- Map: fromJson
  factory OnboardingPage.fromJson(Map<String, dynamic> json) =>
      _$OnboardingPageFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
