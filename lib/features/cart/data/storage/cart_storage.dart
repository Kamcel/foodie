import 'package:foodie/features/cart/data/model/cart.dart';
import 'package:hive_ce/hive.dart';

class CartStorage {
  CartStorage._();
  static final instance = CartStorage._();

  static const _boxName = 'carts';
  static const _key = 'cached_cart';

  Box get _box => Hive.box(_boxName);

  // ── READ ────────────────────────────────────────────────
  Cart loadCart() {
    final data = _box.get(_key);
    if (data == null) return const Cart();
    return data as Cart;
  }

  // ── WRITE ───────────────────────────────────────────────
  Future<void> saveCarts(List<Cart> carts) => _box.put(_key, carts);

  Future<void> saveCart(Cart cart) => _box.put(_key, cart);

  // ── CLEAR ───────────────────────────────────────────────
  Future<void> clear() => _box.delete(_key);
}
