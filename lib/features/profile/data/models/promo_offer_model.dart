// promo_offer_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_offer_model.freezed.dart';
part 'promo_offer_model.g.dart';

@freezed
abstract class PromoOfferModel with _$PromoOfferModel {
  const factory PromoOfferModel({
    required String promoId,
    required String code,
    required String title,
    required bool isActive,
  }) = _PromoOfferModel;

  factory PromoOfferModel.fromJson(Map<String, dynamic> json) =>
      _$PromoOfferModelFromJson(json);
}
