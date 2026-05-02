import 'package:foodie/features/auth/data/models/auth_response/user.dart';
import 'package:hive_ce/hive.dart';

// ── userStorage ─────────────────────────────────────────
// Pattern: one box, multiple typed keys
// The box 'app_settings' must be opened in main.dart before runApp()
class UserStorage {
  UserStorage._();
  static final instance = UserStorage._();

  static const _boxName = 'user_box';
  static const _userKey = 'user';

  Box get _box => Hive.box(_boxName);

  // ── READ ────────────────────────────────────────────────
  User? getUser() {
    final raw = _box.get(_userKey);
    if (raw == null) return null;
    return User.fromJson(Map<String, dynamic>.from(raw));
  }

  // ── WRITE ───────────────────────────────────────────────
  Future<void> saveUser(User user) => _box.put(_userKey, user.toJson());

  // ── CLEAR ───────────────────────────────────────────────
  Future<void> clear() => _box.delete(_userKey);
}
