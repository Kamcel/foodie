import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class OrderItem with _$OrderItem {
  const OrderItem._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory OrderItem({
    // F -- Fields
    required String dishId,
    required String dishName,
    required int quantity,
    required String selectedSize,
    required String dishIamge,
    @Default([]) List<String> selectedToppings,
  }) = _OrderItem;

  // M -- Map: fromJson
  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
