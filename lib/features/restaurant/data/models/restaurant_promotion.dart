import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_promotion.freezed.dart';
part 'restaurant_promotion.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class RestaurantPromotion with _$RestaurantPromotion {
  const RestaurantPromotion._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory RestaurantPromotion({
    // F -- Fields
    required String id,
    required String title,
    required String description,
    required PromotionType type,
    double? discountValue,
    double? minimumOrderAmount,
    String? promoCode,
    required DateTime validFrom,
    required DateTime validUntil,
    @Default(false) bool isAutoApplied,
    @Default([]) List<String> applicableItemIds,
    @Default([]) List<String> excludedItemIds,
  }) = _RestaurantPromotion;

  // M -- Map: fromJson
  factory RestaurantPromotion.fromJson(Map<String, dynamic> json) =>
      _$RestaurantPromotionFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;

  bool get isValid =>
      DateTime.now().isAfter(validFrom) && DateTime.now().isBefore(validUntil);

  bool get requiresMinimum =>
      minimumOrderAmount != null && minimumOrderAmount! > 0;
}
