// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_preferences_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppPreferencesSettings _$AppPreferencesSettingsFromJson(
        Map<String, dynamic> json) =>
    _AppPreferencesSettings(
      isDarkMode: json['isDarkMode'] as bool? ?? false,
      useBiometricAuth: json['useBiometricAuth'] as bool? ?? false,
      languageCode: json['languageCode'] as String? ?? 'en',
    );

Map<String, dynamic> _$AppPreferencesSettingsToJson(
        _AppPreferencesSettings instance) =>
    <String, dynamic>{
      'isDarkMode': instance.isDarkMode,
      'useBiometricAuth': instance.useBiometricAuth,
      'languageCode': instance.languageCode,
    };
