// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantAddress _$RestaurantAddressFromJson(Map<String, dynamic> json) =>
    _RestaurantAddress(
      street: json['street'] as String,
      unit: json['unit'] as String?,
      city: json['city'] as String,
      state: json['state'] as String,
      zipCode: json['zipCode'] as String,
      country: json['country'] as String,
      label: json['label'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RestaurantAddressToJson(_RestaurantAddress instance) =>
    <String, dynamic>{
      'street': instance.street,
      'unit': instance.unit,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'country': instance.country,
      'label': instance.label,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
