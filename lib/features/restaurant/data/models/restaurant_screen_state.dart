import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:foodie/features/restaurant/presentation/widgets/refinement_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_screen_state.freezed.dart';

// LSEE -- Loading, Success, Empty, Error
@freezed
sealed class RestaurantScreenState with _$RestaurantScreenState {
  const factory RestaurantScreenState.loading() = _Loading;
  const factory RestaurantScreenState.success(
      {required List<Restaurant> restaurants,
      required CuisineType? selectedCusineType,
      required Set<RefinementType> selectedRefinement,
      required String searchResult,
      required int restaurantCount}) = _Success;
  const factory RestaurantScreenState.empty({
    required CuisineType? selectedCusineType,
    required Set<RefinementType> selectedRefinement,
    required String searchResult,
  }) = _Empty;
  const factory RestaurantScreenState.error({required String message}) = _Error;
}
