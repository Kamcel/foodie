// profile_stats_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_stats_model.freezed.dart';
part 'profile_stats_model.g.dart';

@freezed
abstract class ProfileStatsModel with _$ProfileStatsModel {
  const factory ProfileStatsModel({
    required int totalOrdersCount,
    required int totalSpentInCents,
    required int loyaltyPoints,
    required String tierName,
  }) = _ProfileStatsModel;

  factory ProfileStatsModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileStatsModelFromJson(json);
}
