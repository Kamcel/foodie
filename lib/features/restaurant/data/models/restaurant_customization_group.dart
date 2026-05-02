import 'package:foodie/features/restaurant/data/models/restaurant_customization_option.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_customization_group.freezed.dart';
part 'restaurant_customization_group.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class RestaurantCustomizationGroup
    with _$RestaurantCustomizationGroup {
  const RestaurantCustomizationGroup._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory RestaurantCustomizationGroup({
    // F -- Fields
    required String id,
    required String name,
    String? description,
    required CustomizationType type,
    @Default(false) bool isRequired,
    @Default(1) int minSelections,
    @Default(1) int maxSelections,
    @Default([]) List<RestaurantCustomizationOption> options,
  }) = _RestaurantCustomizationGroup;

  // M -- Map: fromJson
  factory RestaurantCustomizationGroup.fromJson(Map<String, dynamic> json) =>
      _$RestaurantCustomizationGroupFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
