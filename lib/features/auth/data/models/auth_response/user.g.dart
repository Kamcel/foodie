// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String?,
      avatar: json['avatar'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      socialProvider:
          $enumDecodeNullable(_$AuthProviderEnumMap, json['socialProvider']),
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      subScriptionType: $enumDecodeNullable(
              _$SubScriptionTypeEnumMap, json['subScriptionType']) ??
          SubScriptionType.basic,
      userName: json['userName'] as String? ?? '',
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'address': instance.address,
      'socialProvider': _$AuthProviderEnumMap[instance.socialProvider],
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'subScriptionType': _$SubScriptionTypeEnumMap[instance.subScriptionType]!,
      'userName': instance.userName,
    };

const _$AuthProviderEnumMap = {
  AuthProvider.google: 'google',
  AuthProvider.apple: 'apple',
  AuthProvider.facebook: 'facebook',
};

const _$SubScriptionTypeEnumMap = {
  SubScriptionType.basic: 'basic',
  SubScriptionType.monthly: 'monthly',
  SubScriptionType.yearly: 'yearly',
  SubScriptionType.pro: 'pro',
  SubScriptionType.lifetime: 'lifetime',
};
