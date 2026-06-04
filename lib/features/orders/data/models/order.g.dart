// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
      id: json['id'] as String,
      restaurantName: json['restaurantName'] as String,
      restaurantImageUrl: json['restaurantImageUrl'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      deliveryAddress: json['deliveryAddress'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      riderName: json['riderName'] as String?,
      estimatedDeliveryTime: json['estimatedDeliveryTime'] as String?,
    );

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
      'id': instance.id,
      'restaurantName': instance.restaurantName,
      'restaurantImageUrl': instance.restaurantImageUrl,
      'items': instance.items,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'totalAmount': instance.totalAmount,
      'deliveryAddress': instance.deliveryAddress,
      'rating': instance.rating,
      'riderName': instance.riderName,
      'estimatedDeliveryTime': instance.estimatedDeliveryTime,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.active: 'active',
  OrderStatus.delivered: 'delivered',
  OrderStatus.cancelled: 'cancelled',
};
