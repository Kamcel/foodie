// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_social.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthSocial _$AuthSocialFromJson(Map<String, dynamic> json) => _AuthSocial(
      provider: $enumDecode(_$AuthProviderEnumMap, json['provider']),
      token: json['token'] as String,
      idToken: json['idToken'] as String?,
    );

Map<String, dynamic> _$AuthSocialToJson(_AuthSocial instance) =>
    <String, dynamic>{
      'provider': _$AuthProviderEnumMap[instance.provider]!,
      'token': instance.token,
      'idToken': instance.idToken,
    };

const _$AuthProviderEnumMap = {
  AuthProvider.google: 'google',
  AuthProvider.apple: 'apple',
  AuthProvider.facebook: 'facebook',
};
