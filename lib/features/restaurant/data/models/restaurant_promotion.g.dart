// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantPromotion _$RestaurantPromotionFromJson(Map<String, dynamic> json) =>
    _RestaurantPromotion(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$PromotionTypeEnumMap, json['type']),
      discountValue: (json['discountValue'] as num?)?.toDouble(),
      minimumOrderAmount: (json['minimumOrderAmount'] as num?)?.toDouble(),
      promoCode: json['promoCode'] as String?,
      validFrom: DateTime.parse(json['validFrom'] as String),
      validUntil: DateTime.parse(json['validUntil'] as String),
      isAutoApplied: json['isAutoApplied'] as bool? ?? false,
      applicableItemIds: (json['applicableItemIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      excludedItemIds: (json['excludedItemIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$RestaurantPromotionToJson(
        _RestaurantPromotion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$PromotionTypeEnumMap[instance.type]!,
      'discountValue': instance.discountValue,
      'minimumOrderAmount': instance.minimumOrderAmount,
      'promoCode': instance.promoCode,
      'validFrom': instance.validFrom.toIso8601String(),
      'validUntil': instance.validUntil.toIso8601String(),
      'isAutoApplied': instance.isAutoApplied,
      'applicableItemIds': instance.applicableItemIds,
      'excludedItemIds': instance.excludedItemIds,
    };

const _$PromotionTypeEnumMap = {
  PromotionType.percentageOff: 'percentageOff',
  PromotionType.fixedAmountOff: 'fixedAmountOff',
  PromotionType.buyOneGetOne: 'buyOneGetOne',
  PromotionType.freeDelivery: 'freeDelivery',
  PromotionType.freeItem: 'freeItem',
  PromotionType.bundleDeal: 'bundleDeal',
  PromotionType.firstOrder: 'firstOrder',
};
