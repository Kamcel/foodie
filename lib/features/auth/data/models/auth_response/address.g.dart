// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
      id: json['id'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      homeAddress: json['homeAddress'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      workAddress: json['workAddress'] as String?,
    );

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'homeAddress': instance.homeAddress,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'workAddress': instance.workAddress,
    };
