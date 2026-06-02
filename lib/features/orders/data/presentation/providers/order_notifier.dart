import 'package:foodie/features/cart/data/model/cart_item.dart';
import 'package:foodie/features/orders/data/models/order.dart';
import 'package:foodie/features/orders/data/models/order_state.dart';
import 'package:foodie/features/orders/data/models/order_status.dart';
import 'package:foodie/features/orders/data/repositories/order_repository.dart';
import 'package:foodie/features/orders/data/services/order_service.dart';
import 'package:foodie/features/orders/data/storage/order_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_notifier.g.dart';

@riverpod
class OrderNotifier extends _$OrderNotifier {
  final _repository =
      OrderRepository(service: OrderService(), storage: OrderStorage.instance);

  @override
  OrderState build() {
    loadOrders();
    return const OrderState.loading();
  }

  // 1. LOAD ORDERS
  Future<void> loadOrders() async {
    state = const OrderState.loading();
    try {
      final result = await _repository.getOrders();
      if (result.isEmpty) {
        state = const OrderState.empty();
      } else {
        state = OrderState.success(orders: result);
      }
    } catch (e) {
      state = OrderState.error(message: e.toString());
    }
  }

  // 2. RATE ORDER
  Future<void> rateOrder(String orderId, int rating) async {
    // G — Guard
    if (state is! Success) return;
    // C — Cast
    final c = state as Success;
    // L — Logic: SVTL — List→List (same length, one changed), Transform conditional, .map() with copyWith
    final updated = c.orders.map((order) {
      if (order.id == orderId) return order.copyWith(rating: rating);
      return order;
    }).toList();
    // S — State
    state = c.copyWith(orders: updated);
  }

  // 3. CANCEL ORDER
  Future<void> cancelOrder(String orderId) async {
    // G
    if (state is! Success) return;
    // C
    final c = state as Success;
    // L — SVTL: List→List (same length, one changed), Transform conditional, .map() with copyWith
    final updated = c.orders.map((order) {
      if (order.id == orderId)
        return order.copyWith(status: OrderStatus.cancelled);
      return order;
    }).toList();
    // S
    state = c.copyWith(orders: updated);
  }

  // 4. REORDER — returns items as CartItem list for Cart to consume
  List<CartItem> getReorderItems(String orderId) {
    if (state is! Success) return [];

    final c = state as Success;
    for (final order in c.orders) {
      if (order.id == orderId) {
        return order.items;
      }
    }
    return [];
  }

  // 5. GET ORDER DETAILS
  Order? getOrderDetails(String orderId) {
    if (state is! Success) return null;
    final c = state as Success;
    final index = c.orders.indexWhere((o) => o.id == orderId);
    return index == -1 ? null : c.orders[index];
  }

  // 6. ACTIVE ORDERS — getter
  List<Order> get activeOrders {
    if (state is! Success) return [];
    final c = state as Success;
    // SVTL: List→List (shorter), Filter, .where().toList()
    return c.orders.where((o) => o.isActive).toList();
  }

  // 7. PAST ORDERS — getter
  List<Order> get pastOrders {
    if (state is! Success) return [];
    final c = state as Success;
    return c.orders.where((o) => o.isDelivered || o.isCancelled).toList();
  }
}
