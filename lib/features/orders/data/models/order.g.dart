// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
      orderId: json['orderId'] as String,
      restaurantName: json['restaurantName'] as String,
      restaurantImage: json['restaurantImage'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPriceInCents: (json['totalPriceInCents'] as num).toInt(),
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      dateOrdered: DateTime.parse(json['dateOrdered'] as String),
      calculatedEta: json['calculatedEta'] as String?,
      driverName: json['driverName'] as String?,
    );

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
      'orderId': instance.orderId,
      'restaurantName': instance.restaurantName,
      'restaurantImage': instance.restaurantImage,
      'items': instance.items,
      'totalPriceInCents': instance.totalPriceInCents,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'dateOrdered': instance.dateOrdered.toIso8601String(),
      'calculatedEta': instance.calculatedEta,
      'driverName': instance.driverName,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.active: 'active',
  OrderStatus.delivered: 'delivered',
  OrderStatus.cancelled: 'cancelled',
};
