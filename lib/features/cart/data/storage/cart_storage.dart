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
    final rawData = _box.get(_key);
    if (rawData == null) return const Cart();

    try {
      final Map<String, dynamic> jsonMap = rawData is String 
          ? Map<String, dynamic>.from(_box.get(_key)) // Fallback parser
          : Map<String, dynamic>.from(rawData as Map);
          
      return Cart.fromJson(jsonMap);
    } catch (e) {
      return const Cart(); // Fallback if data is corrupted
    }
  }

  // ── WRITE ───────────────────────────────────────────────
  Future<void> saveCart(Cart cart) async {
    final jsonMap = cart.toJson();
    await _box.put(_key, jsonMap);
  }

  // ── CLEAR ───────────────────────────────────────────────
  Future<void> clear() async => await _box.delete(_key);
}
