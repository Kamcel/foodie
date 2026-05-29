import 'package:foodie/features/orders/data/models/order.dart';
import 'package:foodie/features/orders/data/services/order_service.dart';
import 'package:foodie/features/orders/data/storage/order_storage.dart';

class OrderRepository {
  final OrderService _service;
  final OrderStorage _storage;

  OrderRepository(
      {required OrderService service, required OrderStorage storage})
      : _service = service,
        _storage = storage;

  Future<List<Order>> getOrders() async {
    try {
      // Try API first
      final orders = await _service.getAll();
      // Cache for offline
      await _storage.savedOrders(orders);
      return orders;
    } catch (e) {
      //if API failes, try Hive
      final cached = _storage.loadOrders;
      if (cached.isNotEmpty) return cached;
      //If both fails, rethrow
      rethrow;
    }
  }
}
