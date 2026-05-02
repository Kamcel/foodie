// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
      id: json['id'] as String,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      homeCountry: json['homeCountry'] as String,
      homeState: json['homeState'] as String?,
      homeCity: json['homeCity'] as String?,
      homeStreet: json['homeStreet'] as String?,
      workCompany: json['workCompany'] as String?,
      workCity: json['workCity'] as String?,
      workAddress: json['workAddress'] as String?,
    );

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'homeCountry': instance.homeCountry,
      'homeState': instance.homeState,
      'homeCity': instance.homeCity,
      'homeStreet': instance.homeStreet,
      'workCompany': instance.workCompany,
      'workCity': instance.workCity,
      'workAddress': instance.workAddress,
    };
