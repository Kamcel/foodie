import 'package:foodie/features/restaurant/data/models/restaurant_address.dart';
import 'package:foodie/features/restaurant/data/models/restaurant_menu_category.dart';
import 'package:foodie/features/restaurant/data/models/restaurant_opening_hours.dart';
import 'package:foodie/features/restaurant/data/models/restaurant_promotion.dart';
import 'package:foodie/features/restaurant/data/models/review.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant.freezed.dart';
part 'restaurant.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class Restaurant with _$Restaurant {
  const Restaurant._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory Restaurant({
    // F -- Fields
    // ========== IDENTITY ==========
    required String id,
    required String name,
    required String slug,
    required String description,
    required String imageUrl,
    String? tagline,
    String? logoUrl,
    @Default([]) List<String> coverImages,

    // ========== CLASSIFICATION ==========
    @Default([]) List<CuisineType> cuisines,
    @Default([]) List<String> categories,
    required PriceRange priceRange,
    @Default([]) List<String> tags,
    required RestaurantStatus status,
    RestaurantTier? tier,

    // ========== LOCATION ==========
    required RestaurantAddress address,
    double? latitude,
    double? longitude,
    @Default(5.0) double deliveryRadiusKm,

    // ========== HOURS & AVAILABILITY ==========
    @Default([]) List<RestaurantOpeningHours> openingHours,
    required bool isOpenNow,
    @Default(false) bool isTemporarilyClosed,
    DateTime? nextOpeningTime,
    DateTime? nextClosingTime,

    // ========== DELIVERY ==========
    @Default(0.0) double deliveryFee,
    @Default(0.0) double deliveryTimeMin,
    @Default(0.0) double deliveryTimeMax,
    double? minimumOrderAmount,
    //required String estimatedDeliveryTime,
    @Default(true) bool offersDelivery,
    @Default(true) bool offersPickup,
    @Default(false) bool offersCatering,
    @Default([]) List<OrderType> orderTypes,

    // ========== RATINGS ==========
    @Default(0.0) double rating,
    @Default(0) int reviewCount,
    double? foodRating,
    double? deliveryRating,
    double? packagingRating,

    // ========== FEATURES ==========
    @Default([]) List<RestaurantDietaryPreference> dietaryOptions,
    @Default([]) List<Amenity> amenities,
    @Default(true) bool acceptsCustomRequests,
    @Default(false) bool hasAlcohol,
    @Default(false) bool isChain,
    @Default(false) bool isSponsored,

    // ========== PAYMENT ==========
    @Default([PaymentMethod.creditCard, PaymentMethod.cash])
    List<PaymentMethod> acceptedPaymentMethods,

    // ========== PROMOTIONS ==========
    @Default([]) List<RestaurantPromotion> activePromotions,

    // ========== MENU ==========
    @Default([]) List<RestaurantMenuCategory> menuCategories,
    @Default([]) List<String> popularItemIds,

    // ========== CONTACT ==========
    required String phoneNumber,
    String? websiteUrl,
    String? email,

    // ========== METADATA ==========
    required DateTime createdAt,
    required DateTime updatedAt,
    String? ownerId,

    // ========== REVIEW ==========
    @Default([]) List<Review> reviews,
  }) = _Restaurant;

  // M -- Map: fromJson
  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
