// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Restaurant _$RestaurantFromJson(Map<String, dynamic> json) => _Restaurant(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      tagline: json['tagline'] as String?,
      logoUrl: json['logoUrl'] as String?,
      coverImages: (json['coverImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      cuisines: (json['cuisines'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$CuisineTypeEnumMap, e))
              .toList() ??
          const [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      priceRange: $enumDecode(_$PriceRangeEnumMap, json['priceRange']),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      status: $enumDecode(_$RestaurantStatusEnumMap, json['status']),
      tier: $enumDecodeNullable(_$RestaurantTierEnumMap, json['tier']),
      address:
          RestaurantAddress.fromJson(json['address'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      deliveryRadiusKm: (json['deliveryRadiusKm'] as num?)?.toDouble() ?? 5.0,
      openingHours: (json['openingHours'] as List<dynamic>?)
              ?.map((e) =>
                  RestaurantOpeningHours.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isOpenNow: json['isOpenNow'] as bool,
      isTemporarilyClosed: json['isTemporarilyClosed'] as bool? ?? false,
      nextOpeningTime: json['nextOpeningTime'] == null
          ? null
          : DateTime.parse(json['nextOpeningTime'] as String),
      nextClosingTime: json['nextClosingTime'] == null
          ? null
          : DateTime.parse(json['nextClosingTime'] as String),
      deliveryFee: (json['deliveryFee'] as num?)?.toDouble() ?? 0.0,
      deliveryTimeMin: (json['deliveryTimeMin'] as num?)?.toDouble() ?? 0.0,
      deliveryTimeMax: (json['deliveryTimeMax'] as num?)?.toDouble() ?? 0.0,
      minimumOrderAmount: (json['minimumOrderAmount'] as num?)?.toDouble(),
      offersDelivery: json['offersDelivery'] as bool? ?? true,
      offersPickup: json['offersPickup'] as bool? ?? true,
      offersCatering: json['offersCatering'] as bool? ?? false,
      orderTypes: (json['orderTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$OrderTypeEnumMap, e))
              .toList() ??
          const [],
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
      foodRating: (json['foodRating'] as num?)?.toDouble(),
      deliveryRating: (json['deliveryRating'] as num?)?.toDouble(),
      packagingRating: (json['packagingRating'] as num?)?.toDouble(),
      dietaryOptions: (json['dietaryOptions'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DietaryPreferenceEnumMap, e))
              .toList() ??
          const [],
      amenities: (json['amenities'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AmenityEnumMap, e))
              .toList() ??
          const [],
      acceptsCustomRequests: json['acceptsCustomRequests'] as bool? ?? true,
      hasAlcohol: json['hasAlcohol'] as bool? ?? false,
      isChain: json['isChain'] as bool? ?? false,
      isSponsored: json['isSponsored'] as bool? ?? false,
      acceptedPaymentMethods: (json['acceptedPaymentMethods'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PaymentMethodEnumMap, e))
              .toList() ??
          const [PaymentMethod.creditCard, PaymentMethod.cash],
      activePromotions: (json['activePromotions'] as List<dynamic>?)
              ?.map((e) =>
                  RestaurantPromotion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      menuCategories: (json['menuCategories'] as List<dynamic>?)
              ?.map((e) =>
                  RestaurantMenuCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      popularItemIds: (json['popularItemIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      phoneNumber: json['phoneNumber'] as String,
      websiteUrl: json['websiteUrl'] as String?,
      email: json['email'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      ownerId: json['ownerId'] as String?,
    );

Map<String, dynamic> _$RestaurantToJson(_Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'tagline': instance.tagline,
      'logoUrl': instance.logoUrl,
      'coverImages': instance.coverImages,
      'cuisines':
          instance.cuisines.map((e) => _$CuisineTypeEnumMap[e]!).toList(),
      'categories': instance.categories,
      'priceRange': _$PriceRangeEnumMap[instance.priceRange]!,
      'tags': instance.tags,
      'status': _$RestaurantStatusEnumMap[instance.status]!,
      'tier': _$RestaurantTierEnumMap[instance.tier],
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'deliveryRadiusKm': instance.deliveryRadiusKm,
      'openingHours': instance.openingHours,
      'isOpenNow': instance.isOpenNow,
      'isTemporarilyClosed': instance.isTemporarilyClosed,
      'nextOpeningTime': instance.nextOpeningTime?.toIso8601String(),
      'nextClosingTime': instance.nextClosingTime?.toIso8601String(),
      'deliveryFee': instance.deliveryFee,
      'deliveryTimeMin': instance.deliveryTimeMin,
      'deliveryTimeMax': instance.deliveryTimeMax,
      'minimumOrderAmount': instance.minimumOrderAmount,
      'offersDelivery': instance.offersDelivery,
      'offersPickup': instance.offersPickup,
      'offersCatering': instance.offersCatering,
      'orderTypes':
          instance.orderTypes.map((e) => _$OrderTypeEnumMap[e]!).toList(),
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'foodRating': instance.foodRating,
      'deliveryRating': instance.deliveryRating,
      'packagingRating': instance.packagingRating,
      'dietaryOptions': instance.dietaryOptions
          .map((e) => _$DietaryPreferenceEnumMap[e]!)
          .toList(),
      'amenities': instance.amenities.map((e) => _$AmenityEnumMap[e]!).toList(),
      'acceptsCustomRequests': instance.acceptsCustomRequests,
      'hasAlcohol': instance.hasAlcohol,
      'isChain': instance.isChain,
      'isSponsored': instance.isSponsored,
      'acceptedPaymentMethods': instance.acceptedPaymentMethods
          .map((e) => _$PaymentMethodEnumMap[e]!)
          .toList(),
      'activePromotions': instance.activePromotions,
      'menuCategories': instance.menuCategories,
      'popularItemIds': instance.popularItemIds,
      'phoneNumber': instance.phoneNumber,
      'websiteUrl': instance.websiteUrl,
      'email': instance.email,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'ownerId': instance.ownerId,
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

const _$RestaurantStatusEnumMap = {
  RestaurantStatus.active: 'active',
  RestaurantStatus.pending: 'pending',
  RestaurantStatus.suspended: 'suspended',
  RestaurantStatus.closed: 'closed',
  RestaurantStatus.maintenance: 'maintenance',
  RestaurantStatus.busy: 'busy',
};

const _$RestaurantTierEnumMap = {
  RestaurantTier.localFavorite: 'localFavorite',
  RestaurantTier.popular: 'popular',
  RestaurantTier.newArrival: 'newArrival',
  RestaurantTier.exclusive: 'exclusive',
  RestaurantTier.chain: 'chain',
  RestaurantTier.premium: 'premium',
};

const _$OrderTypeEnumMap = {
  OrderType.delivery: 'delivery',
  OrderType.pickup: 'pickup',
  OrderType.dineIn: 'dineIn',
  OrderType.curbside: 'curbside',
  OrderType.driveThru: 'driveThru',
};

const _$DietaryPreferenceEnumMap = {
  DietaryPreference.vegetarian: 'vegetarian',
  DietaryPreference.vegan: 'vegan',
  DietaryPreference.glutenFree: 'glutenFree',
  DietaryPreference.halal: 'halal',
  DietaryPreference.kosher: 'kosher',
  DietaryPreference.dairyFree: 'dairyFree',
  DietaryPreference.nutFree: 'nutFree',
  DietaryPreference.keto: 'keto',
  DietaryPreference.paleo: 'paleo',
  DietaryPreference.lowSodium: 'lowSodium',
  DietaryPreference.lowCarb: 'lowCarb',
  DietaryPreference.organic: 'organic',
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

const _$PaymentMethodEnumMap = {
  PaymentMethod.creditCard: 'creditCard',
  PaymentMethod.debitCard: 'debitCard',
  PaymentMethod.cash: 'cash',
  PaymentMethod.digitalWallet: 'digitalWallet',
  PaymentMethod.cryptocurrency: 'cryptocurrency',
  PaymentMethod.bankTransfer: 'bankTransfer',
  PaymentMethod.giftCard: 'giftCard',
};
