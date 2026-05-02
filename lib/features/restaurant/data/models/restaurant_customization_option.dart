import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_customization_option.freezed.dart';
part 'restaurant_customization_option.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class RestaurantCustomizationOption
    with _$RestaurantCustomizationOption {
  const RestaurantCustomizationOption._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory RestaurantCustomizationOption({
    // F -- Fields
    required String id,
    required String name,
    @Default(0.0) double additionalPrice,
    @Default(false) bool isDefault,
    @Default(true) bool isAvailable,
    String? imageUrl,
  }) = _RestaurantCustomizationOption;

  // M -- Map: fromJson
  factory RestaurantCustomizationOption.fromJson(Map<String, dynamic> json) =>
      _$RestaurantCustomizationOptionFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
