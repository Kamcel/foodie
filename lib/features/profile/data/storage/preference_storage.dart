import 'package:foodie/features/profile/data/models/user_preference.dart';
import 'package:hive_ce/hive.dart';

// ── PreferenecStorage ─────────────────────────────────────────
// Pattern: one box, multiple typed keys
// The box 'app_settings' must be opened in main.dart before runApp()
class PreferenceStorage {
  PreferenceStorage._();
  static final instance = PreferenceStorage._();

  static const _boxName = 'profile_box';
  static const _preferencKey = 'preference';

  Box get _box => Hive.box(_boxName);

  // ── SAve profile after successful api call ────────────────────────────────────────────────
  Future<void> savePreference(UserPreference preference) async {
    await _box.put(_preferencKey, preference.toJson());
  }

  //Read saved profile
  UserPreference? getUserPreference() {
    final data = _box.get(_preferencKey);
    if (data == null) return null;
    return UserPreference.fromJson(Map<String, dynamic>.from(data));
  }

  //Check if profile exist
  bool get hasPreference => _box.containsKey(_preferencKey);

  // ── CLEAR  profile on logout───────────────────────────────────────────────
  Future<void> clear() async {
    await _box.delete(_preferencKey);
  }
}
