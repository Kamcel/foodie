// app_preferences_settings.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_preferences_settings.freezed.dart';
part 'app_preferences_settings.g.dart';

@freezed
abstract class AppPreferencesSettings with _$AppPreferencesSettings {
  const factory AppPreferencesSettings({
    @Default(false) bool isDarkMode,
    @Default(false) bool useBiometricAuth,
    @Default('en') String languageCode,
  }) = _AppPreferencesSettings;

  factory AppPreferencesSettings.fromJson(Map<String, dynamic> json) =>
      _$AppPreferencesSettingsFromJson(json);
}
