import 'package:foodie/features/restaurant/data/models/restaurant_menu_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_menu_category.freezed.dart';
part 'restaurant_menu_category.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class RestaurantMenuCategory with _$RestaurantMenuCategory {
  const RestaurantMenuCategory._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory RestaurantMenuCategory({
    // F -- Fields
    required String id,
    required String name,
    String? description,
    String? imageUrl,
    @Default(0) int sortOrder,
    @Default([]) List<RestaurantMenuItem> items,
  }) = _RestaurantMenuCategory;

  // M -- Map: fromJson
  factory RestaurantMenuCategory.fromJson(Map<String, dynamic> json) =>
      _$RestaurantMenuCategoryFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
