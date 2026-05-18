import 'package:foodie/features/dish/data/models/dish.dart';
import 'package:foodie/features/dish/data/services/dish_service.dart';
import 'package:foodie/features/dish/data/storage/dish_storage.dart';

class DishRepository {
  final DishService _service;
  final DishStorage _storage;

  DishRepository({required DishService service, required DishStorage storage})
      : _service = service,
        _storage = storage;

  Future<List<Dish>> getDishes() async {
    try {
      // Try API first
      final dishes = await _service.getAll();
      // Cache for offline
      await _storage.saveDishes(dishes);
      return dishes;
    } catch (e) {
      //if API failes, try Hive
      final cached = _storage.loadDishes;
      if (cached.isNotEmpty) return cached;
      //If both fails, rethrow
      rethrow;
    }
  }
}
