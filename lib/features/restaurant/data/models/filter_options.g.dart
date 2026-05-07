// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FilterOptions _$FilterOptionsFromJson(Map<String, dynamic> json) =>
    _FilterOptions(
      minRating: (json['minRating'] as num?)?.toDouble(),
      freeDelivery: json['freeDelivery'] as bool?,
      openNow: json['openNow'] as bool?,
      sortBy: json['sortBy'] as String?,
      dietary: (json['dietary'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$RestaurantDietaryPreferenceEnumMap, e))
              .toList() ??
          const [],
      cuisines: (json['cuisines'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$CuisineTypeEnumMap, e))
              .toList() ??
          const [],
      priceRange: (json['priceRange'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PriceRangeEnumMap, e))
              .toList() ??
          const [],
      amenities: (json['amenities'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AmenityEnumMap, e))
              .toList() ??
          const [],
      orderTypes: (json['orderTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$OrderTypeEnumMap, e))
              .toList() ??
          const [],
      paymentMethod: (json['paymentMethod'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PaymentMethodEnumMap, e))
              .toList() ??
          const [],
      tiers: (json['tiers'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$RestaurantTierEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FilterOptionsToJson(_FilterOptions instance) =>
    <String, dynamic>{
      'minRating': instance.minRating,
      'freeDelivery': instance.freeDelivery,
      'openNow': instance.openNow,
      'sortBy': instance.sortBy,
      'dietary': instance.dietary
          .map((e) => _$RestaurantDietaryPreferenceEnumMap[e]!)
          .toList(),
      'cuisines':
          instance.cuisines.map((e) => _$CuisineTypeEnumMap[e]!).toList(),
      'priceRange':
          instance.priceRange.map((e) => _$PriceRangeEnumMap[e]!).toList(),
      'amenities': instance.amenities.map((e) => _$AmenityEnumMap[e]!).toList(),
      'orderTypes':
          instance.orderTypes.map((e) => _$OrderTypeEnumMap[e]!).toList(),
      'paymentMethod': instance.paymentMethod
          .map((e) => _$PaymentMethodEnumMap[e]!)
          .toList(),
      'tiers': instance.tiers.map((e) => _$RestaurantTierEnumMap[e]!).toList(),
    };

const _$RestaurantDietaryPreferenceEnumMap = {
  RestaurantDietaryPreference.vegetarian: 'vegetarian',
  RestaurantDietaryPreference.vegan: 'vegan',
  RestaurantDietaryPreference.glutenFree: 'glutenFree',
  RestaurantDietaryPreference.halal: 'halal',
  RestaurantDietaryPreference.kosher: 'kosher',
  RestaurantDietaryPreference.dairyFree: 'dairyFree',
  RestaurantDietaryPreference.nutFree: 'nutFree',
  RestaurantDietaryPreference.keto: 'keto',
  RestaurantDietaryPreference.paleo: 'paleo',
  RestaurantDietaryPreference.lowSodium: 'lowSodium',
  RestaurantDietaryPreference.lowCarb: 'lowCarb',
  RestaurantDietaryPreference.organic: 'organic',
};

const _$CuisineTypeEnumMap = {
  CuisineType.italian: 'italian',
  CuisineType.american: 'american',
  CuisineType.mexican: 'mexican',
  CuisineType.chinese: 'chinese',
  CuisineType.japanese: 'japanese',
  CuisineType.indian: 'indian',
  CuisineType.thai: 'thai',
  CuisineType.mediterranean: 'mediterranean',
  CuisineType.french: 'french',
  CuisineType.korean: 'korean',
  CuisineType.vietnamese: 'vietnamese',
  CuisineType.greek: 'greek',
  CuisineType.middleEastern: 'middleEastern',
  CuisineType.african: 'african',
  CuisineType.nigerian: 'nigerian',
  CuisineType.fastFood: 'fastFood',
  CuisineType.pizza: 'pizza',
  CuisineType.burger: 'burger',
  CuisineType.sushi: 'sushi',
};

const _$PriceRangeEnumMap = {
  PriceRange.budget: 'budget',
  PriceRange.moderate: 'moderate',
  PriceRange.expensive: 'expensive',
  PriceRange.luxury: 'luxury',
};

const _$AmenityEnumMap = {
  Amenity.freeWifi: 'freeWifi',
  Amenity.outdoorSeating: 'outdoorSeating',
  Amenity.parking: 'parking',
  Amenity.wheelchairAccessible: 'wheelchairAccessible',
  Amenity.airConditioning: 'airConditioning',
  Amenity.delivery: 'delivery',
  Amenity.pickup: 'pickup',
  Amenity.reservations: 'reservations',
  Amenity.familyFriendly: 'familyFriendly',
  Amenity.petFriendly: 'petFriendly',
  Amenity.takeout: 'takeout',
  Amenity.liveMusic: 'liveMusic',
};

const _$OrderTypeEnumMap = {
  OrderType.delivery: 'delivery',
  OrderType.pickup: 'pickup',
  OrderType.dineIn: 'dineIn',
  OrderType.curbside: 'curbside',
  OrderType.driveThru: 'driveThru',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.creditCard: 'creditCard',
  PaymentMethod.debitCard: 'debitCard',
  PaymentMethod.cash: 'cash',
  PaymentMethod.digitalWallet: 'digitalWallet',
  PaymentMethod.cryptocurrency: 'cryptocurrency',
  PaymentMethod.bankTransfer: 'bankTransfer',
  PaymentMethod.giftCard: 'giftCard',
};

const _$RestaurantTierEnumMap = {
  RestaurantTier.localFavorite: 'localFavorite',
  RestaurantTier.popular: 'popular',
  RestaurantTier.newArrival: 'newArrival',
  RestaurantTier.exclusive: 'exclusive',
  RestaurantTier.chain: 'chain',
  RestaurantTier.premium: 'premium',
};
