import 'package:foodie/features/dish/data/models/dish.dart';
import 'package:foodie/features/dish/data/models/dish_enums.dart';
import 'package:foodie/features/dish/data/models/dish_list_state.dart';
import 'package:foodie/features/dish/data/repositories/dish_repository.dart';
import 'package:foodie/features/dish/data/services/dish_service.dart';
import 'package:foodie/features/dish/data/storage/dish_storage.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dish_notifier.g.dart';

@riverpod
class DishNotifier extends _$DishNotifier {
//All Logic goes her
//total Price
  double get totalPrice {
    if (state is! Success) return 0.0;
    final currentState = state as Success;

    double currentItemPrice = currentState.dish.basePrice;
    if (currentState.selectedSize != null) {
      currentItemPrice += currentState.selectedSize!.extraCharge;
    }
    // for topping
    for (final topping in currentState.selectedToppings) {
      currentItemPrice += topping.additionalPrice;
    }

    return currentItemPrice * currentState.quantity;
  }

//size selection
  void sizeSelection(PortionSize size) {
    if (state is! Success) return;
    final currentState = state as Success;
    state = currentState.copyWith(selectedSize: size);
  }

//topping  selection
  void toppingSelection(CustomizationOption toppings) {
    if (state is! Success) return;
    final currentState = state as Success;
    final updatedToppings = [...currentState.selectedToppings];
    if (updatedToppings.contains(toppings)) {
      updatedToppings.remove(toppings);
    } else {
      updatedToppings.add(toppings);
    }
    state = currentState.copyWith(selectedToppings: updatedToppings);
  }

//note
  void setNote(String query) {
    if (state is! Success) return;
    final currentState = state as Success;
    state = currentState.copyWith(note: query);
  }

//increment
  void incrementQuantity() {
    if (state is! Success) return;
    final currentState = state as Success;
    state = currentState.copyWith(quantity: currentState.quantity + 1);
  }

//decrement
  void decrementQuantity() {
    if (state is! Success) return;
    final currentState = state as Success;
    if (currentState.quantity == 1) return;
    state = currentState.copyWith(quantity: currentState.quantity - 1);
  }

  //is orderable
  bool get isOrderable {
    if (state is! Success) return false;
    final currentState = state as Success;
    return currentState.dish.isAvailable && !currentState.dish.isSoldOut;
  }

  void initializeDish(Dish dish) {
    state = DishListState.success(dish: dish);
  }

//add to  cart
  void addTocart() {
    if (state is! Success) return;
    final currentState = state as Success;
    if (!isOrderable) return;
    //TODO: add when cart is ready
  }

  final repository =
      DishRepository(service: DishService(), storage: DishStorage.instance);

  @override
  DishListState build() {
    // loadDishes();
    return const DishListState.loading();
  }

  Future<void> loadDishes() async {
    state = const DishListState.loading(); // 1. tell UI loading
    try {
      final result = await repository.getDishes(); // 2. call server/service
      // await _storage.save(result);           // 3. save to Hive (if needed)
      state = DishListState.success(
        dish: result.first,
      ); // 4. tell UI result
    } catch (e) {
      state = DishListState.error(message: e.toString());
    }
  }
}
