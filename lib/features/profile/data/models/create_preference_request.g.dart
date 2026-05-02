// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_preference_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePreferenceRequest _$CreatePreferenceRequestFromJson(
        Map<String, dynamic> json) =>
    _CreatePreferenceRequest(
      dietaryPrefernces: (json['dietaryPrefernces'] as List<dynamic>)
          .map((e) => $enumDecode(_$DietaryPreferenceEnumMap, e))
          .toList(),
      allergies: (json['allergies'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AllergyEnumMap, e))
              .toList() ??
          const [],
      spiceLevel: $enumDecodeNullable(_$SpiceLevelEnumMap, json['spiceLevel']),
      cuisines: (json['cuisines'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$CuisineEnumMap, e))
              .toList() ??
          const [],
      orderUpdate: json['orderUpdate'] as bool? ?? false,
      dealsUpdate: json['dealsUpdate'] as bool? ?? false,
      whatsappUpdates: json['whatsappUpdates'] as bool? ?? false,
    );

Map<String, dynamic> _$CreatePreferenceRequestToJson(
        _CreatePreferenceRequest instance) =>
    <String, dynamic>{
      'dietaryPrefernces': instance.dietaryPrefernces
          .map((e) => _$DietaryPreferenceEnumMap[e]!)
          .toList(),
      'allergies': instance.allergies.map((e) => _$AllergyEnumMap[e]!).toList(),
      'spiceLevel': _$SpiceLevelEnumMap[instance.spiceLevel],
      'cuisines': instance.cuisines.map((e) => _$CuisineEnumMap[e]!).toList(),
      'orderUpdate': instance.orderUpdate,
      'dealsUpdate': instance.dealsUpdate,
      'whatsappUpdates': instance.whatsappUpdates,
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

const _$SpiceLevelEnumMap = {
  SpiceLevel.mild: 'mild',
  SpiceLevel.medium: 'medium',
  SpiceLevel.hot: 'hot',
  SpiceLevel.extraHot: 'extra_hot',
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
