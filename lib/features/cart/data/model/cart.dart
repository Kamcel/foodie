import 'package:foodie/features/cart/data/model/cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class Cart with _$Cart {
  const Cart._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory Cart({
    // F -- Fields
    @Default([]) List<CartItem> items,
    String? promoCode,
    @Default(0.0) double deliveryFee,
    @Default(0.0) double taxFee,
  }) = _Cart;

  // M -- Map: fromJson
  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  // V -- Validation / computed properties go here
  // Subtotal: sum of all items (price * quantity)
  double get subtotal =>
      items.fold(0.0, (sum, item) => sum + (item.basePrice * item.quantity));

  // Total: subtotal + fees
  double get total => subtotal + deliveryFee + taxFee;

  // Total number of items in the cart
  int get itemCount => items.fold(0, (sum, item) => sum + item.quantity);
}
