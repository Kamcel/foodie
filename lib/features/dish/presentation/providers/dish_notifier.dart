import 'package:foodie/features/dish/data/models/dish_list_state.dart';
import 'package:foodie/features/dish/data/repositories/dish_repository.dart';
import 'package:foodie/features/dish/data/services/dish_service.dart';
import 'package:foodie/features/dish/data/storage/dish_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dish_notifier.g.dart';

@riverpod
class DishNotifier extends _$DishNotifier {
  //Repository
  final repository = DishRepository(
    service: DishService(),
    storage: DishStorage.instance,
  );
  @override
  DishListState build() {
    loadDishes();
    return const DishListState.loading();
  }

  Future<void> loadDishes() async {
    state = const DishListState.loading(); // 1. tell UI loading
    try {
      final result = await repository.getDishes();
      if (result.isEmpty) {
        state = const DishListState.empty();
      } else {
        state = DishListState.success(dishes: result);
      }

      // 4. tell UI result
    } catch (e) {
      state = DishListState.error(message: e.toString());
    }
  }
}
