// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileStatsModel _$ProfileStatsModelFromJson(Map<String, dynamic> json) =>
    _ProfileStatsModel(
      totalOrdersCount: (json['totalOrdersCount'] as num).toInt(),
      totalSpentInCents: (json['totalSpentInCents'] as num).toInt(),
      loyaltyPoints: (json['loyaltyPoints'] as num).toInt(),
      tierName: json['tierName'] as String,
    );

Map<String, dynamic> _$ProfileStatsModelToJson(_ProfileStatsModel instance) =>
    <String, dynamic>{
      'totalOrdersCount': instance.totalOrdersCount,
      'totalSpentInCents': instance.totalSpentInCents,
      'loyaltyPoints': instance.loyaltyPoints,
      'tierName': instance.tierName,
    };
