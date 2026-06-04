import 'package:flutter/foundation.dart';
import 'package:foodie/features/cart/data/model/cart.dart';
import 'package:foodie/features/cart/data/model/cart_item.dart';
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
      // Handle case where data might be stored as a Map with nested CartItem objects
      if (rawData is Map<String, dynamic>) {
        // If items exist and are CartItem objects, we need to convert them to Maps first
        if (rawData['items'] is List) {
          final itemsList = (rawData['items'] as List).map((item) {
            if (item is CartItem) {
              // If it's already a CartItem object, convert to JSON map
              return item.toJson();
            }
            return item;
          }).toList();

          final correctedData = Map<String, dynamic>.from(rawData)
            ..[('items')] = itemsList;

          return Cart.fromJson(correctedData);
        }
      }

      final Map<String, dynamic> jsonMap =
          Map<String, dynamic>.from(rawData as Map);
      return Cart.fromJson(jsonMap);
    } catch (e) {
      debugPrint('CartStorage.loadCart error: $e');
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
