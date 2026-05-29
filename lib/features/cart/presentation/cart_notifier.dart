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

  //all Logic goes here
  /// Adds an item or increments quantity if it already exists
  void addItem(CartItem item) {
    final currentState = state;
    final updatedItem = [...currentState.items];
    final existingIndex = updatedItem.indexWhere((i) => i.id == item.id);

    if (existingIndex != -1) {
      updatedItem[existingIndex] = updatedItem[existingIndex].copyWith(
        quantity: updatedItem[existingIndex].quantity + item.quantity,
      );
    } else {
      updatedItem.add(item);
    }
    state = state.copyWith(items: updatedItem);
    _storage.saveCart(state);
  }

  /// Removes an item entirely from the cart
  void removeItem(String itemId) {
    final updated = state.items.where((item) => item.id != itemId).toList();
    state = state.copyWith(items: updated);
    _storage.saveCart(state);
  }

  /// Simple increment for existing items
  void incrementQuantity(String itemId) {
    final updated = state.items.map((item) {
      if (item.id == itemId) return item.copyWith(quantity: item.quantity + 1);
      return item;
    }).toList();
    state = state.copyWith(items: updated);
    _storage.saveCart(state);
  }

  /// Decrement quantity but keep item in cart (min 1)
  void decrementQuantity(String itemId) {
    final updated = state.items.map((item) {
      if (item.id == itemId && item.quantity > 1) {
        return item.copyWith(quantity: item.quantity - 1);
      }
      return item;
    }).toList();
    state = state.copyWith(items: updated);
    _storage.saveCart(state);
  }

  /// Updates the promo code on the cart state
  void applyPromo(String code) {
    state = state.copyWith(promoCode: code);
    _storage.saveCart(state);
  }

  /// Resets the cart to empty
  void clearCart() {
    state = const Cart(); // This works because items has a @Default([])
    _storage.clear();
  }
}
