// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    _RegisterRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      socialProvider:
          $enumDecodeNullable(_$AuthProviderEnumMap, json['socialProvider']),
      socialToken: json['socialToken'] as String?,
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$RegisterRequestToJson(_RegisterRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'phone': instance.phone,
      'socialProvider': _$AuthProviderEnumMap[instance.socialProvider],
      'socialToken': instance.socialToken,
      'countryCode': instance.countryCode,
    };

const _$AuthProviderEnumMap = {
  AuthProvider.google: 'google',
  AuthProvider.apple: 'apple',
  AuthProvider.facebook: 'facebook',
};
