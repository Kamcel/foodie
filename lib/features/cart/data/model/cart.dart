import 'package:foodie/features/cart/data/model/cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
abstract class Cart with _$Cart {
  const Cart._(); // Required for computed SVTL properties

  const factory Cart({
    @Default([]) List<CartItem> items,
    String? promoCode,
    @Default(0.0) double deliveryFee,
    @Default(0.0) double taxFee,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  // ── SVTL DATA TRANSFORMATIONS ───────────────────────────
  double get subtotal =>
      items.fold(0.0, (sum, item) => sum + (item.basePrice * item.quantity));

  int get itemCount => items.fold(0, (sum, item) => sum + item.quantity);

  double get discount {
    if (promoCode == 'SAVE10') {
      return subtotal * 0.1; // 10% discount
    }
    return 0.0;
  }

  double get calculatedTax => subtotal * 0.08;

  double get calculatedDeliveryFee => subtotal > 10000 ? 0.0 : 1500.0;
  
  double get total => subtotal + calculatedDeliveryFee + calculatedTax - discount;
}
