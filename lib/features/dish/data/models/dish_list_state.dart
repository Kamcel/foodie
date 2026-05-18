import 'package:foodie/features/dish/data/models/dish.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_list_state.freezed.dart';

// LSEE -- Loading, Success, Empty, Error
@freezed
abstract class DishListState with _$DishListState {
  const factory DishListState.loading() = _Loading;
  const factory DishListState.success({required List<Dish> dishes}) = _Success;
  const factory DishListState.empty() = _Empty;
  const factory DishListState.error({required String message}) = _Error;
}
