// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreference _$UserPreferenceFromJson(Map<String, dynamic> json) =>
    _UserPreference(
      id: json['id'] as String,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      dietaryPreferences: (json['dietaryPreferences'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DietaryPreferenceEnumMap, e))
              .toList() ??
          const [],
      allergies: (json['allergies'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AllergyEnumMap, e))
              .toList() ??
          const [],
      cuisines: (json['cuisines'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$CuisineEnumMap, e))
              .toList() ??
          const [],
      spicelevel:
          $enumDecodeNullable(_$SpiceLevelEnumMap, json['spicelevel']) ??
              SpiceLevel.mild,
      whatsappUpdates: json['whatsappUpdates'] as bool? ?? false,
      orderUpdates: json['orderUpdates'] as bool? ?? true,
      dealsUpdates: json['dealsUpdates'] as bool? ?? false,
    );

Map<String, dynamic> _$UserPreferenceToJson(_UserPreference instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'dietaryPreferences': instance.dietaryPreferences
          .map((e) => _$DietaryPreferenceEnumMap[e]!)
          .toList(),
      'allergies': instance.allergies.map((e) => _$AllergyEnumMap[e]!).toList(),
      'cuisines': instance.cuisines.map((e) => _$CuisineEnumMap[e]!).toList(),
      'spicelevel': _$SpiceLevelEnumMap[instance.spicelevel]!,
      'whatsappUpdates': instance.whatsappUpdates,
      'orderUpdates': instance.orderUpdates,
      'dealsUpdates': instance.dealsUpdates,
    };

const _$DietaryPreferenceEnumMap = {
  DietaryPreference.vegetarian: 'vegetarian',
  DietaryPreference.vegan: 'vegan',
  DietaryPreference.glutenFree: 'gluten_free',
  DietaryPreference.dairyFree: 'dairy_free',
  DietaryPreference.keto: 'keto',
  DietaryPreference.paleo: 'paleo',
  DietaryPreference.halal: 'halal',
  DietaryPreference.kosher: 'kosher',
  DietaryPreference.lowCarb: 'low_carb',
  DietaryPreference.lowFat: 'low_fat',
  DietaryPreference.lowSugar: 'low_sugar',
  DietaryPreference.nutFree: 'nut_free',
};

const _$AllergyEnumMap = {
  Allergy.peanuts: 'peanuts',
  Allergy.treeNuts: 'tree_nuts',
  Allergy.milk: 'milk',
  Allergy.eggs: 'eggs',
  Allergy.wheat: 'wheat',
  Allergy.soy: 'soy',
  Allergy.fish: 'fish',
  Allergy.shellfish: 'shellfish',
  Allergy.sesame: 'sesame',
};

const _$CuisineEnumMap = {
  Cuisine.african: 'african',
  Cuisine.american: 'american',
  Cuisine.asian: 'asian',
  Cuisine.chinese: 'chinese',
  Cuisine.french: 'french',
  Cuisine.indian: 'indian',
  Cuisine.italian: 'italian',
  Cuisine.japanese: 'japanese',
  Cuisine.korean: 'korean',
  Cuisine.lebanese: 'lebanese',
  Cuisine.mediterranean: 'mediterranean',
  Cuisine.mexican: 'mexican',
  Cuisine.middleEastern: 'middle_eastern',
  Cuisine.nigerian: 'nigerian',
  Cuisine.thai: 'thai',
  Cuisine.vietnamese: 'vietnamese',
};

const _$SpiceLevelEnumMap = {
  SpiceLevel.mild: 'mild',
  SpiceLevel.medium: 'medium',
  SpiceLevel.hot: 'hot',
  SpiceLevel.extraHot: 'extra_hot',
};
