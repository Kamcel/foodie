// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => _OrderItem(
      dishId: json['dishId'] as String,
      dishName: json['dishName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      selectedSize: json['selectedSize'] as String,
      dishIamge: json['dishIamge'] as String,
      selectedToppings: (json['selectedToppings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OrderItemToJson(_OrderItem instance) =>
    <String, dynamic>{
      'dishId': instance.dishId,
      'dishName': instance.dishName,
      'quantity': instance.quantity,
      'selectedSize': instance.selectedSize,
      'dishIamge': instance.dishIamge,
      'selectedToppings': instance.selectedToppings,
    };
