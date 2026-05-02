// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_opening_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantOpeningHours _$RestaurantOpeningHoursFromJson(
        Map<String, dynamic> json) =>
    _RestaurantOpeningHours(
      dayOfWeek: $enumDecode(_$DayOfWeekEnumMap, json['dayOfWeek']),
      openTime: json['openTime'] as String,
      closeTime: json['closeTime'] as String,
      is24Hours: json['is24Hours'] as bool? ?? false,
      isClosed: json['isClosed'] as bool? ?? false,
      breaks: (json['breaks'] as List<dynamic>?)
              ?.map((e) =>
                  RestaurantBreaktime.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$RestaurantOpeningHoursToJson(
        _RestaurantOpeningHours instance) =>
    <String, dynamic>{
      'dayOfWeek': _$DayOfWeekEnumMap[instance.dayOfWeek]!,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'is24Hours': instance.is24Hours,
      'isClosed': instance.isClosed,
      'breaks': instance.breaks,
    };

const _$DayOfWeekEnumMap = {
  DayOfWeek.sunday: 'sunday',
  DayOfWeek.monday: 'monday',
  DayOfWeek.tuesday: 'tuesday',
  DayOfWeek.wednesday: 'wednesday',
  DayOfWeek.thursday: 'thursday',
  DayOfWeek.friday: 'friday',
  DayOfWeek.saturday: 'saturday',
};
