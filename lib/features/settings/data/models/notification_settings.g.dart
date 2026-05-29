// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationSettings _$NotificationSettingsFromJson(
        Map<String, dynamic> json) =>
    _NotificationSettings(
      orderUpdates: json['orderUpdates'] as bool? ?? true,
      promotionsAndOffers: json['promotionsAndOffers'] as bool? ?? true,
      newsletterAlerts: json['newsletterAlerts'] as bool? ?? false,
    );

Map<String, dynamic> _$NotificationSettingsToJson(
        _NotificationSettings instance) =>
    <String, dynamic>{
      'orderUpdates': instance.orderUpdates,
      'promotionsAndOffers': instance.promotionsAndOffers,
      'newsletterAlerts': instance.newsletterAlerts,
    };
