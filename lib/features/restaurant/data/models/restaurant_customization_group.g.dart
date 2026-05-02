// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_customization_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantCustomizationGroup _$RestaurantCustomizationGroupFromJson(
        Map<String, dynamic> json) =>
    _RestaurantCustomizationGroup(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      type: $enumDecode(_$CustomizationTypeEnumMap, json['type']),
      isRequired: json['isRequired'] as bool? ?? false,
      minSelections: (json['minSelections'] as num?)?.toInt() ?? 1,
      maxSelections: (json['maxSelections'] as num?)?.toInt() ?? 1,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => RestaurantCustomizationOption.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$RestaurantCustomizationGroupToJson(
        _RestaurantCustomizationGroup instance) =>
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
