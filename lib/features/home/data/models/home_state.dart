import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

// LSEE -- Loading, Success, Empty, Error
@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success({
    required List<Restaurant> featuredRestaurants,
    required List<Restaurant> trendingRestaurants,
    required List<CuisineType> popularCuisines,
    required CuisineType? selectedCuisine,
  }) = _Success;
  const factory HomeState.empty() = _Empty;
  const factory HomeState.error({required String message}) = _Error;
}
