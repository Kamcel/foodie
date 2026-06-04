import 'package:foodie/features/cart/data/model/cart_item.dart';
import 'package:foodie/features/orders/data/models/order_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
abstract class Order with _$Order {
  const Order._(); // Required for computed properties

  const factory Order({
    required String id,
    required String restaurantName,
    required String restaurantImageUrl,
    required List<CartItem> items,
    required OrderStatus status,
    required DateTime createdAt,
    required double totalAmount,
    String? deliveryAddress,
    int? rating,
    String? riderName,
    String? estimatedDeliveryTime,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  // V -- Validation / computed properties

  // Status checks
  bool get isActive => status == OrderStatus.active;
  bool get isCancelled => status == OrderStatus.cancelled;
  bool get isDelivered => status == OrderStatus.delivered;

  // Business Logic Getters
  bool get canCancel => isActive;
  bool get canRate => isDelivered && rating == null;

  int get itemCount => items.fold(0, (sum, item) => sum + item.quantity);

  // UI formatters
  String get formattedTotal => '₦${NumberFormat('#,###').format(totalAmount)}';

  String get formattedDate {
    return DateFormat('dd MMM yyyy, hh:mm a').format(createdAt);
  }

  // Summary of items (e.g., "Pizza, Burger + 2 more")
  String get itemsSummary {
    if (items.isEmpty) return 'No items';
    final firstTwo = items.take(2).map((e) => e.dishName).join(', ');
    return items.length > 2 ? '$firstTwo + ${items.length - 2} more' : firstTwo;
  }
}
