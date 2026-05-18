import 'package:foodie/features/dish/data/models/dish.dart';
import 'package:hive_ce/hive.dart';

// ── DishStorage ─────────────────────────────────────────
// Pattern: one box, multiple typed keys
// The box 'app_settings' must be opened in main.dart before runApp()
class DishStorage {
  DishStorage._();
  static final instance = DishStorage._();

  static const _boxName = 'dishes';
  static const _key = 'cached_dishes';

  Box get _box => Hive.box(_boxName);

  // ── READ ────────────────────────────────────────────────
  List<Dish> get loadDishes {
    final List? data = _box.get(_key);
    if (data == null) return [];
    return data.cast<Dish>();
  }

  // ── WRITE ───────────────────────────────────────────────
  Future<void> saveDishes(List<Dish> dishes) => _box.put(_key, dishes);

  // ── CLEAR ───────────────────────────────────────────────
  Future<void> clear() => _box.delete(_key);
}
