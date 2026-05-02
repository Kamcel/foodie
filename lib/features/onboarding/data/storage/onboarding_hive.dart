import 'package:hive_ce/hive.dart';

// OnboardingStorage -- reads/writes from Hive box 'app_settings'
// Box must be opened in main.dart: await Hive.openBox('app_settings');
class OnboardingStorage {
  OnboardingStorage._();
  static final instance = OnboardingStorage._();

  static const _boxName = 'app_settings';
  static const _doneKey = 'onboarding_done';

  //Get box

  Box get _box => Hive.box(_boxName);

  // Has the user completed onboarding?
  bool get isDone => _box.get(_doneKey, defaultValue: false) as bool;

  // Mark onboarding as complete
  Future<void> markDone() => _box.put(_doneKey, true);

  // Reset (for testing or logout)
  Future<void> reset() => _box.delete(_doneKey);
}
