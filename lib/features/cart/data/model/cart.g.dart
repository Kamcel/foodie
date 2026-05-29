// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cart _$CartFromJson(Map<String, dynamic> json) => _Cart(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      promoCode: json['promoCode'] as String?,
      deliveryFee: (json['deliveryFee'] as num?)?.toDouble() ?? 0.0,
      taxFee: (json['taxFee'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CartToJson(_Cart instance) => <String, dynamic>{
      'items': instance.items,
      'promoCode': instance.promoCode,
      'deliveryFee': instance.deliveryFee,
      'taxFee': instance.taxFee,
    };
