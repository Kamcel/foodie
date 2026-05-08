import 'package:hive_ce/hive.dart';

// ── RecsentSearchesStorage ─────────────────────────────────────────
// Pattern: one box, multiple typed keys
// The box 'app_settings' must be opened in main.dart before runApp()
class RecsentSearchesStorage {
  RecsentSearchesStorage._();
  static final instance = RecsentSearchesStorage._();

  static const _boxName = 'recent_searches';
  static const _key = 'recent_searches';

  Box get _box => Hive.box(_boxName);

  // ── READ ────────────────────────────────────────────────
  List<String> get recentSearches {
    final List? raw = _box.get(_key);
    return raw?.cast<String>() ?? [];
  }

  // ── WRITE ───────────────────────────────────────────────
  Future<void> saveSearches(List<String> searches) => _box.put(_key, searches);

  // ── CLEAR ───────────────────────────────────────────────
  Future<void> clear() => _box.delete(_key);
}
