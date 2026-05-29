// tracking_model.dart
import 'package:foodie/features/tracking/data/models/tracking_progress_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracking.freezed.dart';
part 'tracking.g.dart';

@freezed
abstract class Tracking with _$Tracking {
  const factory Tracking({
    required String orderId,
    required TrackingProgress currentProgress,
    required String driverName,
    required String driverPhone,
    required int globalEtaMinutes,
    required DateTime confirmedAt,
    DateTime? preparingAt,
    DateTime? pickedUpAt,
    DateTime? deliveredAt,
    double? driverLatitude,
    double? driverLongitude,
  }) = _Tracking;

  factory Tracking.fromJson(Map<String, dynamic> json) =>
      _$TrackingFromJson(json);
}
