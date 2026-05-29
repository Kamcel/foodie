// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoOfferModel _$PromoOfferModelFromJson(Map<String, dynamic> json) =>
    _PromoOfferModel(
      promoId: json['promoId'] as String,
      code: json['code'] as String,
      title: json['title'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$PromoOfferModelToJson(_PromoOfferModel instance) =>
    <String, dynamic>{
      'promoId': instance.promoId,
      'code': instance.code,
      'title': instance.title,
      'isActive': instance.isActive,
    };
