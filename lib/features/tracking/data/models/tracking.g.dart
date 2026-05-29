// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Tracking _$TrackingFromJson(Map<String, dynamic> json) => _Tracking(
      orderId: json['orderId'] as String,
      currentProgress:
          $enumDecode(_$TrackingProgressEnumMap, json['currentProgress']),
      driverName: json['driverName'] as String,
      driverPhone: json['driverPhone'] as String,
      globalEtaMinutes: (json['globalEtaMinutes'] as num).toInt(),
      confirmedAt: DateTime.parse(json['confirmedAt'] as String),
      preparingAt: json['preparingAt'] == null
          ? null
          : DateTime.parse(json['preparingAt'] as String),
      pickedUpAt: json['pickedUpAt'] == null
          ? null
          : DateTime.parse(json['pickedUpAt'] as String),
      deliveredAt: json['deliveredAt'] == null
          ? null
          : DateTime.parse(json['deliveredAt'] as String),
      driverLatitude: (json['driverLatitude'] as num?)?.toDouble(),
      driverLongitude: (json['driverLongitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TrackingToJson(_Tracking instance) => <String, dynamic>{
      'orderId': instance.orderId,
      'currentProgress': _$TrackingProgressEnumMap[instance.currentProgress]!,
      'driverName': instance.driverName,
      'driverPhone': instance.driverPhone,
      'globalEtaMinutes': instance.globalEtaMinutes,
      'confirmedAt': instance.confirmedAt.toIso8601String(),
      'preparingAt': instance.preparingAt?.toIso8601String(),
      'pickedUpAt': instance.pickedUpAt?.toIso8601String(),
      'deliveredAt': instance.deliveredAt?.toIso8601String(),
      'driverLatitude': instance.driverLatitude,
      'driverLongitude': instance.driverLongitude,
    };

const _$TrackingProgressEnumMap = {
  TrackingProgress.orderConfirmed: 'orderConfirmed',
  TrackingProgress.preparingFood: 'preparingFood',
  TrackingProgress.onTheWay: 'onTheWay',
  TrackingProgress.delivered: 'delivered',
};
