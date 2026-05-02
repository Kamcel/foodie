// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_breaktime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantBreaktime _$RestaurantBreaktimeFromJson(Map<String, dynamic> json) =>
    _RestaurantBreaktime(
      start: json['start'] as String,
      end: json['end'] as String,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$RestaurantBreaktimeToJson(
        _RestaurantBreaktime instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'reason': instance.reason,
    };
