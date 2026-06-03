// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartItem _$CartItemFromJson(Map<String, dynamic> json) => _CartItem(
      id: json['id'] as String,
      dishId: json['dishId'] as String,
      dishName: json['dishName'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      selectedSize: json['selectedSize'] as String?,
      selectedToppings: (json['selectedToppings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      basePrice: (json['basePrice'] as num).toDouble(),
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$CartItemToJson(_CartItem instance) => <String, dynamic>{
      'id': instance.id,
      'dishId': instance.dishId,
      'dishName': instance.dishName,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'selectedSize': instance.selectedSize,
      'selectedToppings': instance.selectedToppings,
      'basePrice': instance.basePrice,
      'quantity': instance.quantity,
      'note': instance.note,
    };
