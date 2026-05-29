// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Settings _$SettingsFromJson(Map<String, dynamic> json) => _Settings(
      notifications: NotificationSettings.fromJson(
          json['notifications'] as Map<String, dynamic>),
      preferences: AppPreferencesSettings.fromJson(
          json['preferences'] as Map<String, dynamic>),
      appVersion: json['appVersion'] as String? ?? '1.0.0',
    );

Map<String, dynamic> _$SettingsToJson(_Settings instance) => <String, dynamic>{
      'notifications': instance.notifications,
      'preferences': instance.preferences,
      'appVersion': instance.appVersion,
    };
