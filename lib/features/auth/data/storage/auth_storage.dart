import 'package:hive_ce/hive.dart';

// AuthStorage -- persists auth tokens in Hive
// Box 'auth_box' must be opened in main.dart
class AuthStorage {
  AuthStorage._();
  static final instance = AuthStorage._();

  static const _boxName = 'auth_box';
  static const _accessKey = 'access_token';
  static const _refreshKey = 'refresh_token';
  static const _userIdKey = 'user_id';

  Box get _box => Hive.box(_boxName);

  // ── READ ────────────────────────────────────────────────
  String? get accessToken => _box.get(_accessKey) as String?;
  String? get refreshToken => _box.get(_refreshKey) as String?;
  String? get userId => _box.get(_userIdKey) as String?;
  bool get hasTokens => accessToken != null;

  // ── WRITE ───────────────────────────────────────────────
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
    String? userId,
  }) async {
    await _box.putAll({
      _accessKey: accessToken,
      _refreshKey: refreshToken,
      if (userId != null) _userIdKey: userId,
    });
  }

  // ── CLEAR (logout) ───────────────────────────────────────
  Future<void> clear() => _box.deleteAll([_accessKey, _refreshKey, _userIdKey]);
}
