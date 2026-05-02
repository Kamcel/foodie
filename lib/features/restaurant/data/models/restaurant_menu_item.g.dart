// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantMenuItem _$RestaurantMenuItemFromJson(Map<String, dynamic> json) =>
    _RestaurantMenuItem(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      basePrice: (json['basePrice'] as num).toDouble(),
      originalPrice: (json['originalPrice'] as num?)?.toDouble(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      status: $enumDecodeNullable(_$MenuItemStatusEnumMap, json['status']) ??
          MenuItemStatus.available,
      dietaryTags: (json['dietaryTags'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DietaryPreferenceEnumMap, e))
              .toList() ??
          const [],
      allergens: (json['allergens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      calories: (json['calories'] as num?)?.toInt(),
      nutritionFacts: json['nutritionFacts'] as Map<String, dynamic>?,
      customizations: (json['customizations'] as List<dynamic>?)
              ?.map((e) => RestaurantCustomizationGroup.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      prepTimeMinutes: (json['prepTimeMinutes'] as num?)?.toInt() ?? 15,
      isPopular: json['isPopular'] as bool? ?? false,
      isNew: json['isNew'] as bool? ?? false,
    );

Map<String, dynamic> _$RestaurantMenuItemToJson(_RestaurantMenuItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'basePrice': instance.basePrice,
      'originalPrice': instance.originalPrice,
      'images': instance.images,
      'status': _$MenuItemStatusEnumMap[instance.status]!,
      'dietaryTags': instance.dietaryTags
          .map((e) => _$DietaryPreferenceEnumMap[e]!)
          .toList(),
      'allergens': instance.allergens,
      'calories': instance.calories,
      'nutritionFacts': instance.nutritionFacts,
      'customizations': instance.customizations,
      'prepTimeMinutes': instance.prepTimeMinutes,
      'isPopular': instance.isPopular,
      'isNew': instance.isNew,
    };

const _$MenuItemStatusEnumMap = {
  MenuItemStatus.available: 'available',
  MenuItemStatus.soldOut: 'soldOut',
  MenuItemStatus.comingSoon: 'comingSoon',
  MenuItemStatus.discontinued: 'discontinued',
  MenuItemStatus.limitedTime: 'limitedTime',
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
