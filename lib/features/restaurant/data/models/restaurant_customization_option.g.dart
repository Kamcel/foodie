// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_customization_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantCustomizationOption _$RestaurantCustomizationOptionFromJson(
        Map<String, dynamic> json) =>
    _RestaurantCustomizationOption(
      id: json['id'] as String,
      name: json['name'] as String,
      additionalPrice: (json['additionalPrice'] as num?)?.toDouble() ?? 0.0,
      isDefault: json['isDefault'] as bool? ?? false,
      isAvailable: json['isAvailable'] as bool? ?? true,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$RestaurantCustomizationOptionToJson(
        _RestaurantCustomizationOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'additionalPrice': instance.additionalPrice,
      'isDefault': instance.isDefault,
      'isAvailable': instance.isAvailable,
      'imageUrl': instance.imageUrl,
    };
