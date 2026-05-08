import 'package:hive_ce/hive.dart';

// ── FavoriteStorage ─────────────────────────────────────────
// Pattern: one box, multiple typed keys
// The box 'app_settings' must be opened in main.dart before runApp()
class FavoriteStorage {
  FavoriteStorage._();
  static final instance = FavoriteStorage._();

  static const _boxName = 'favorites';
  static const _key = 'favorite_ids';

  Box get _box => Hive.box(_boxName);

  // ── READ ────────────────────────────────────────────────
  Set<String> get favoriteIds {
    final List? raw = _box.get(_key);
    if (raw == null) return {};
    return raw.cast<String>().toSet();
  }

  // ── WRITE ───────────────────────────────────────────────
  Future<void> saveFavorites(Set<String> ids) => _box.put(_key, ids.toList());

  // ── CLEAR ───────────────────────────────────────────────
  Future<void> clear() => _box.delete(_key);
}
