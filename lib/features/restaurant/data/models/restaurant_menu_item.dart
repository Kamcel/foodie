import 'package:foodie/features/restaurant/data/models/restaurant_customization_group.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_menu_item.freezed.dart';
part 'restaurant_menu_item.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class RestaurantMenuItem with _$RestaurantMenuItem {
  const RestaurantMenuItem._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory RestaurantMenuItem({
    // F -- Fields
    required String id,
    required String name,
    required String description,
    required double basePrice,
    double? originalPrice,
    @Default([]) List<String> images,
    @Default(MenuItemStatus.available) MenuItemStatus status,
    @Default([]) List<RestaurantDietaryPreference> dietaryTags,
    @Default([]) List<String> allergens,
    int? calories,
    Map<String, dynamic>? nutritionFacts,
    @Default([]) List<RestaurantCustomizationGroup> customizations,
    @Default(15) int prepTimeMinutes,
    @Default(false) bool isPopular,
    @Default(false) bool isNew,
  }) = _RestaurantMenuItem;

  // M -- Map: fromJson
  factory RestaurantMenuItem.fromJson(Map<String, dynamic> json) =>
      _$RestaurantMenuItemFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;

  bool get hasCustomizations => customizations.isNotEmpty;
  bool get isOrderable => status.isOrderable;
  double get displayPrice => originalPrice ?? basePrice;
  bool get hasDiscount => originalPrice != null && originalPrice! > basePrice;
}
