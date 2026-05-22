import 'package:foodie/features/dish/data/models/dish.dart';
import 'package:foodie/features/dish/data/models/dish_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_list_state.freezed.dart';

// LSEE -- Loading, Success, Empty, Error
@freezed
sealed class DishListState with _$DishListState {
  const factory DishListState.loading() = Loading;
  const factory DishListState.success({
    required Dish dish,
    PortionSize? selectedSize,
    @Default([]) List<CustomizationOption> selectedToppings,
    @Default('') String note,
    @Default(1) int quantity,
  }) = Success;
  const factory DishListState.empty() = Empty;
  const factory DishListState.error({required String message}) = Error;
}
