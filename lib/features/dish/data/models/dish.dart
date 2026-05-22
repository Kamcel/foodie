// lib/features/dish/data/models/dish.dart
import 'package:foodie/features/dish/data/models/dish_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';
part 'dish.g.dart';

// ==================== CUSTOMIZATION OPTION ====================

@freezed
abstract class CustomizationOption with _$CustomizationOption {
  const factory CustomizationOption({
    required String id,
    required String name,
    @Default(0.0) double additionalPrice,
    @Default(false) bool isDefault,
    @Default(true) bool isAvailable,
    String? imageUrl,
  }) = _CustomizationOption;

  factory CustomizationOption.fromJson(Map<String, dynamic> json) =>
      _$CustomizationOptionFromJson(json);
}

// ==================== CUSTOMIZATION GROUP ====================

@freezed
abstract class CustomizationGroup with _$CustomizationGroup {
  const CustomizationGroup._();

  const factory CustomizationGroup({
    required String id,
    required String name,
    String? description,
    @Default(CustomizationType.multiSelect) CustomizationType type,
    @Default(false) bool isRequired,
    @Default(0) int minSelections,
    @Default(1) int maxSelections,
    @Default([]) List<CustomizationOption> options,
  }) = _CustomizationGroup;

  factory CustomizationGroup.fromJson(Map<String, dynamic> json) =>
      _$CustomizationGroupFromJson(json);

  // Is this a topping group?
  bool get isToppings => name.toLowerCase().contains('topping');

  // Is this a size group?
  bool get isSize => name.toLowerCase().contains('size');

  // Available options only
  List<CustomizationOption> get availableOptions =>
      options.where((o) => o.isAvailable).toList();
}

// ==================== DISH ====================

@freezed
abstract class Dish with _$Dish {
  const Dish._();

  const factory Dish({
    required String id,
    required String restaurantId,
    required String name,
    required String description,
    required double basePrice,
    required String imageUrl,
    double? originalPrice,
    @Default([]) List<String> images,
    String? videoUrl,

    // Classification
    @Default([]) List<DishCategory> categories,
    @Default([]) List<DishDietaryTag> dietaryTags,
    @Default([]) List<Allergen> allergens,
    @Default(DishSpiceLevel.none) DishSpiceLevel spiceLevel,
    @Default(DishStatus.available) DishStatus status,
    int? calories,

    // Customizations — each dish has its own unique groups
    @Default([]) List<CustomizationGroup> customizations,

    // Availability
    @Default(true) bool isAvailable,
    @Default(false) bool isSoldOut,
    @Default(false) bool isPopular,
    @Default(false) bool isNew,
    @Default(false) bool isBestseller,
    @Default(false) bool isChefSpecial,
    int? dailyLimit,
    @Default(PrepTime.standard) PrepTime prepTime,

    // Suggested pairings
    @Default([]) List<String> suggestedPairingIds,

    // Metadata
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(true) bool isActive,
  }) = _Dish;

  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);

  // ── Computed Properties ──

  // Is this dish orderable right now?
  bool get isOrderable =>
      isAvailable && !isSoldOut && status.isOrderable && isActive;

  // Does it have a discount?
  bool get hasDiscount => originalPrice != null && originalPrice! > basePrice;

  // Discount percentage
  double? get discountPercentage {
    if (!hasDiscount) return null;
    return ((originalPrice! - basePrice) / originalPrice! * 100);
  }

  // Has required customizations the user must fill?
  bool get hasRequiredCustomizations => customizations.any((c) => c.isRequired);

  // Price display — shows original price if discounted
  String get priceDisplay => '₦${basePrice.toStringAsFixed(0)}';

  String? get originalPriceDisplay =>
      hasDiscount ? '₦${originalPrice!.toStringAsFixed(0)}' : null;

  // Is it free?
  bool get isFree => basePrice == 0.0;
}
