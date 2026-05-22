// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomizationOption _$CustomizationOptionFromJson(Map<String, dynamic> json) =>
    _CustomizationOption(
      id: json['id'] as String,
      name: json['name'] as String,
      additionalPrice: (json['additionalPrice'] as num?)?.toDouble() ?? 0.0,
      isDefault: json['isDefault'] as bool? ?? false,
      isAvailable: json['isAvailable'] as bool? ?? true,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$CustomizationOptionToJson(
        _CustomizationOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'additionalPrice': instance.additionalPrice,
      'isDefault': instance.isDefault,
      'isAvailable': instance.isAvailable,
      'imageUrl': instance.imageUrl,
    };

_CustomizationGroup _$CustomizationGroupFromJson(Map<String, dynamic> json) =>
    _CustomizationGroup(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      type: $enumDecodeNullable(_$CustomizationTypeEnumMap, json['type']) ??
          CustomizationType.multiSelect,
      isRequired: json['isRequired'] as bool? ?? false,
      minSelections: (json['minSelections'] as num?)?.toInt() ?? 0,
      maxSelections: (json['maxSelections'] as num?)?.toInt() ?? 1,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) =>
                  CustomizationOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CustomizationGroupToJson(_CustomizationGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$CustomizationTypeEnumMap[instance.type]!,
      'isRequired': instance.isRequired,
      'minSelections': instance.minSelections,
      'maxSelections': instance.maxSelections,
      'options': instance.options,
    };

const _$CustomizationTypeEnumMap = {
  CustomizationType.singleSelect: 'singleSelect',
  CustomizationType.multiSelect: 'multiSelect',
  CustomizationType.quantity: 'quantity',
  CustomizationType.text: 'text',
};

_Dish _$DishFromJson(Map<String, dynamic> json) => _Dish(
      id: json['id'] as String,
      restaurantId: json['restaurantId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      basePrice: (json['basePrice'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      originalPrice: (json['originalPrice'] as num?)?.toDouble(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      videoUrl: json['videoUrl'] as String?,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DishCategoryEnumMap, e))
              .toList() ??
          const [],
      dietaryTags: (json['dietaryTags'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DishDietaryTagEnumMap, e))
              .toList() ??
          const [],
      allergens: (json['allergens'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AllergenEnumMap, e))
              .toList() ??
          const [],
      spiceLevel:
          $enumDecodeNullable(_$DishSpiceLevelEnumMap, json['spiceLevel']) ??
              DishSpiceLevel.none,
      status: $enumDecodeNullable(_$DishStatusEnumMap, json['status']) ??
          DishStatus.available,
      calories: (json['calories'] as num?)?.toInt(),
      customizations: (json['customizations'] as List<dynamic>?)
              ?.map(
                  (e) => CustomizationGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isAvailable: json['isAvailable'] as bool? ?? true,
      isSoldOut: json['isSoldOut'] as bool? ?? false,
      isPopular: json['isPopular'] as bool? ?? false,
      isNew: json['isNew'] as bool? ?? false,
      isBestseller: json['isBestseller'] as bool? ?? false,
      isChefSpecial: json['isChefSpecial'] as bool? ?? false,
      dailyLimit: (json['dailyLimit'] as num?)?.toInt(),
      prepTime: $enumDecodeNullable(_$PrepTimeEnumMap, json['prepTime']) ??
          PrepTime.standard,
      suggestedPairingIds: (json['suggestedPairingIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$DishToJson(_Dish instance) => <String, dynamic>{
      'id': instance.id,
      'restaurantId': instance.restaurantId,
      'name': instance.name,
      'description': instance.description,
      'basePrice': instance.basePrice,
      'imageUrl': instance.imageUrl,
      'originalPrice': instance.originalPrice,
      'images': instance.images,
      'videoUrl': instance.videoUrl,
      'categories':
          instance.categories.map((e) => _$DishCategoryEnumMap[e]!).toList(),
      'dietaryTags':
          instance.dietaryTags.map((e) => _$DishDietaryTagEnumMap[e]!).toList(),
      'allergens':
          instance.allergens.map((e) => _$AllergenEnumMap[e]!).toList(),
      'spiceLevel': _$DishSpiceLevelEnumMap[instance.spiceLevel]!,
      'status': _$DishStatusEnumMap[instance.status]!,
      'calories': instance.calories,
      'customizations': instance.customizations,
      'isAvailable': instance.isAvailable,
      'isSoldOut': instance.isSoldOut,
      'isPopular': instance.isPopular,
      'isNew': instance.isNew,
      'isBestseller': instance.isBestseller,
      'isChefSpecial': instance.isChefSpecial,
      'dailyLimit': instance.dailyLimit,
      'prepTime': _$PrepTimeEnumMap[instance.prepTime]!,
      'suggestedPairingIds': instance.suggestedPairingIds,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isActive': instance.isActive,
    };

const _$DishCategoryEnumMap = {
  DishCategory.popular: 'popular',
  DishCategory.burgers: 'burgers',
  DishCategory.pizza: 'pizza',
  DishCategory.sides: 'sides',
  DishCategory.drinks: 'drinks',
  DishCategory.desserts: 'desserts',
  DishCategory.breakfast: 'breakfast',
  DishCategory.mains: 'mains',
  DishCategory.snacks: 'snacks',
  DishCategory.soup: 'soup',
  DishCategory.salads: 'salads',
  DishCategory.seafood: 'seafood',
  DishCategory.specials: 'specials',
  DishCategory.combo: 'combo',
  DishCategory.wraps: 'wraps',
  DishCategory.rice: 'rice',
  DishCategory.pasta: 'pasta',
  DishCategory.grills: 'grills',
};

const _$DishDietaryTagEnumMap = {
  DishDietaryTag.vegetarian: 'vegetarian',
  DishDietaryTag.vegan: 'vegan',
  DishDietaryTag.glutenFree: 'glutenFree',
  DishDietaryTag.halal: 'halal',
  DishDietaryTag.kosher: 'kosher',
  DishDietaryTag.dairyFree: 'dairyFree',
  DishDietaryTag.nutFree: 'nutFree',
  DishDietaryTag.keto: 'keto',
  DishDietaryTag.lowCalorie: 'lowCalorie',
  DishDietaryTag.organic: 'organic',
  DishDietaryTag.spicy: 'spicy',
  DishDietaryTag.newDish: 'new',
  DishDietaryTag.bestseller: 'bestseller',
  DishDietaryTag.chefSpecial: 'chefSpecial',
};

const _$AllergenEnumMap = {
  Allergen.gluten: 'gluten',
  Allergen.dairy: 'dairy',
  Allergen.eggs: 'eggs',
  Allergen.nuts: 'nuts',
  Allergen.peanuts: 'peanuts',
  Allergen.shellfish: 'shellfish',
  Allergen.fish: 'fish',
  Allergen.soy: 'soy',
  Allergen.sesame: 'sesame',
  Allergen.mustard: 'mustard',
  Allergen.celery: 'celery',
  Allergen.sulphites: 'sulphites',
};

const _$DishSpiceLevelEnumMap = {
  DishSpiceLevel.none: 'none',
  DishSpiceLevel.mild: 'mild',
  DishSpiceLevel.medium: 'medium',
  DishSpiceLevel.hot: 'hot',
  DishSpiceLevel.extraHot: 'extraHot',
};

const _$DishStatusEnumMap = {
  DishStatus.available: 'available',
  DishStatus.soldOut: 'soldOut',
  DishStatus.comingSoon: 'comingSoon',
  DishStatus.limitedTime: 'limitedTime',
  DishStatus.discontinued: 'discontinued',
};

const _$PrepTimeEnumMap = {
  PrepTime.instant: 'instant',
  PrepTime.quick: 'quick',
  PrepTime.standard: 'standard',
  PrepTime.slow: 'slow',
  PrepTime.madeToOrder: 'madeToOrder',
};
