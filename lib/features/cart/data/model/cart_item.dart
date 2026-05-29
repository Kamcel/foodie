import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required String id,
    required String dishId,
    required String dishName,
    required String imageUrl,
    String? selectedSize,
    @Default([]) List<String> selectedToppings,
    required double basePrice,
    @Default(1) int quantity,
    String? note,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
