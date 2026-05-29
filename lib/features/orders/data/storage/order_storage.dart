import 'package:foodie/features/orders/data/models/order.dart';
import 'package:hive_ce/hive.dart';

// ── FeatureNameStorage ─────────────────────────────────────────
// Pattern: one box, multiple typed keys
// The box 'app_settings' must be opened in main.dart before runApp()
class OrderStorage {
  OrderStorage._();
  static final instance = OrderStorage._();

  static const _boxName = 'orders';
  static const _key = 'cached_orders';

  Box get _box => Hive.box(_boxName);

  // ── READ ────────────────────────────────────────────────
  List<Order> get loadOrders {
    final List? data = _box.get(_key);
    if (data == null) return [];
    return data.cast<Order>();
  }

  // ── WRITE ───────────────────────────────────────────────
  Future<void> savedOrders(List<Order> orders) => _box.put(_key, orders);

  // ── CLEAR ───────────────────────────────────────────────
  Future<void> clear() => _box.delete(_key);
}
