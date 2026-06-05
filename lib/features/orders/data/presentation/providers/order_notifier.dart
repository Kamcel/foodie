import 'dart:async';
import 'package:flutter/foundation.dart';
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

  // ── PATH A: SIMULATED CHECKOUT PIPELINE ───────────────────
  
  Future<void> checkoutCartToActiveOrder(Order newOrder) async {
    // G — Guard & Extract current orders list layer
    final List<Order> currentOrders = state.maybeWhen(
      success: (orders) => orders,
      orElse: () => [],
    );

    // L — Logic: Prepend fresh active order to current history collection sequence
    final updatedOrders = [newOrder, ...currentOrders];
    
    // S — State update to register active layout card target
    state = OrderState.success(orders: updatedOrders);
    
    // Persist changes down to Hive local caching database
    try {
      await _repository.storage.saveOrders(updatedOrders);
      debugPrint('OrderNotifier: Active order cached successfully. Commencing 30s delivery countdown simulation...');
      
      // Kick off background status mutation timer sequence
      _startSimulatedDeliveryTimer(newOrder.id);
    } catch (e) {
      debugPrint('OrderNotifier error writing to local storage box: $e');
    }
  }

  void _startSimulatedDeliveryTimer(String orderId) {
    Future.delayed(const Duration(seconds: 30), () async {
      // G — Guard check to make sure state hasn't been destroyed or altered violently
      if (state is! Success) return;
      
      // C — Cast current working state context
      final currentState = state as Success;
      
      debugPrint('OrderNotifier: Timer complete! Flipping order $orderId status to DELIVERED');

      // L — Logic: SVTL Mapping mutation loop array conversion
      final updatedOrders = currentState.orders.map((order) {
        if (order.id == orderId) {
          return order.copyWith(
            status: OrderStatus.delivered,
            estimatedDeliveryTime: 'Delivered',
          );
        }
        return order;
      }).toList();

      // S — State rewrite to kick-off downstream UI reactive rendering hooks
      state = currentState.copyWith(orders: updatedOrders);

      // Persist delivery completion status record down to native disk storage
      await _repository.storage.saveOrders(updatedOrders);
    });
  }

  // ── EXISTING NOTIFIER LOGIC METHODS ───────────────────────
  
  Future<void> rateOrder(String orderId, int rating) async {
    if (state is! Success) return;
    final c = state as Success;
    final updated = c.orders.map((order) {
      if (order.id == orderId) return order.copyWith(rating: rating);
      return order;
    }).toList();
    state = c.copyWith(orders: updated);
    await _repository.storage.saveOrders(updated);
  }

  Future<void> cancelOrder(String orderId) async {
    if (state is! Success) return;
    final c = state as Success;
    final updated = c.orders.map((order) {
      if (order.id == orderId) return order.copyWith(status: OrderStatus.cancelled);
      return order;
    }).toList();
    state = c.copyWith(orders: updated);
    await _repository.storage.saveOrders(updated);
  }

  List<CartItem> getReorderItems(String orderId) {
    if (state is! Success) return [];
    final c = state as Success;
    for (final order in c.orders) {
      if (order.id == orderId) return order.items;
    }
    return [];
  }

  Order? getOrderDetails(String orderId) {
    if (state is! Success) return null;
    final c = state as Success;
    final index = c.orders.indexWhere((o) => o.id == orderId);
    return index == -1 ? null : c.orders[index];
  }

  List<Order> get activeOrders {
    if (state is! Success) return [];
    final c = state as Success;
    return c.orders.where((o) => o.isActive).toList();
  }

  List<Order> get pastOrders {
    if (state is! Success) return [];
    final c = state as Success;
    return c.orders.where((o) => o.isDelivered || o.isCancelled).toList();
  }
}
