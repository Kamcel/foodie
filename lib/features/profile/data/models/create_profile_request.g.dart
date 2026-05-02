// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateProfileRequest _$CreateProfileRequestFromJson(
        Map<String, dynamic> json) =>
    _CreateProfileRequest(
      country: json['country'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      homeStreet: json['homeStreet'] as String,
      deliveryInstructions: json['deliveryInstructions'] as String?,
      workCompany: json['workCompany'] as String?,
      workCity: json['workCity'] as String?,
      workZipCode: json['workZipCode'] as String?,
      workStreet: json['workStreet'] as String?,
    );

Map<String, dynamic> _$CreateProfileRequestToJson(
        _CreateProfileRequest instance) =>
    <String, dynamic>{
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'homeStreet': instance.homeStreet,
      'deliveryInstructions': instance.deliveryInstructions,
      'workCompany': instance.workCompany,
      'workCity': instance.workCity,
      'workZipCode': instance.workZipCode,
      'workStreet': instance.workStreet,
    };
