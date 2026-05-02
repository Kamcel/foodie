// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    _UpdateUserRequest(
      name: json['name'] as String,
      userName: json['userName'] as String,
      avatarPath: json['avatarPath'] as String,
    );

Map<String, dynamic> _$UpdateUserRequestToJson(_UpdateUserRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'avatarPath': instance.avatarPath,
    };
