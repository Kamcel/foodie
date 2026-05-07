import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_screen_state.freezed.dart';

// LSEE -- Loading, Success, Empty, Error
@freezed
sealed class RestaurantScreenState with _$RestaurantScreenState {
  const factory RestaurantScreenState.loading() = _Loading;
  const factory RestaurantScreenState.success({
    required List<Restaurant> restaurants,
  }) = _Success;
  const factory RestaurantScreenState.empty() = _Empty;
  const factory RestaurantScreenState.error({required String message}) = _Error;
}
