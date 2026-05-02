import 'package:foodie/features/profile/data/models/profile.dart';
import 'package:hive_ce/hive.dart';

// ── ProfileStorage ─────────────────────────────────────────
// Pattern: one box, multiple typed keys
// The box 'app_settings' must be opened in main.dart before runApp()
class ProfileStorage {
  ProfileStorage._();
  static final instance = ProfileStorage._();

  static const _boxName = 'profile_box';
  static const _profileKey = 'profile';

  Box get _box => Hive.box(_boxName);

  // ── SAve profile after successful api call ────────────────────────────────────────────────
  Future<void> saveProfile(Profile profile) async {
    await _box.put(_profileKey, profile.toJson());
  }

  //Read saved profile
  Profile? getProfile() {
    final data = _box.get(_profileKey);
    if (data == null) return null;
    return Profile.fromJson(Map<String, dynamic>.from(data));
  }

  //Check if profile exist
  bool get hasProfile => _box.containsKey(_profileKey);

  // ── CLEAR  profile on logout───────────────────────────────────────────────
  Future<void> clear() async {
    await _box.delete(_profileKey);
  }
}
