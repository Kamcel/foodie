// settings_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'notification_settings.dart';
import 'app_preferences_settings.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
abstract class Settings with _$Settings {
  const factory Settings({
    required NotificationSettings notifications,
    required AppPreferencesSettings preferences,
    @Default('1.0.0') String appVersion,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
