import 'package:foodie/features/orders/data/models/order_item.dart';
import 'package:foodie/features/orders/data/models/order_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class Order with _$Order {
  const Order._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory Order({
    // F -- Fields
    required String orderId,
    required String restaurantName,
    required String restaurantImage,
    @Default([]) List<OrderItem> items,
    required int totalPriceInCents,
    required OrderStatus status,
    required DateTime dateOrdered,
    String? calculatedEta,
    String? driverName,
  }) = _Order;

  // M -- Map: fromJson
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
