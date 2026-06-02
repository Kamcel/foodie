import 'package:foodie/features/cart/data/model/cart.dart';
import 'package:foodie/features/cart/data/model/cart_item.dart';
import 'package:foodie/features/cart/data/storage/cart_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_notifier.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  final _storage = CartStorage.instance;
  @override
  Cart build() {
    return _storage.loadCart();
  }

  void addItem(CartItem item) {
    final updatedItems = [...state.items, item];
    state = state.copyWith(items: updatedItems);
    _storage.saveCart(state);
  }

  void removeItem(String itemId) {
    final updatedItems =
        state.items.where((item) => item.id != itemId).toList();
    state = state.copyWith(items: updatedItems);
    _storage.saveCart(state);
  }

  void incrementItem(String itemId) {
    final updatedItems = state.items.map((item) {
      if (item.id == itemId) {
        return item.copyWith(quantity: item.quantity + 1);
      }
      return item;
    }).toList();

    state = state.copyWith(items: updatedItems);
    _storage.saveCart(state);
  }

  void decrementItem(String itemId) {
    final updatedItems = state.items.map((item) {
      if (item.id == itemId && item.quantity > 1) {
        return item.copyWith(quantity: item.quantity - 1);
      }
      return item;
    }).toList();

    state = state.copyWith(items: updatedItems);
    _storage.saveCart(state);
  }

  void clearCart() {
    state = const Cart(items: []);
    _storage.saveCart(state);
  }
}
