import 'package:foodie/features/tracking/data/models/tracking.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracking_state.freezed.dart';

// LSEE -- Loading, Success, Empty, Error
@freezed
sealed class TrackingState with _$TrackingState {
  const factory TrackingState.loading() = Loading;
  const factory TrackingState.success({required Tracking tracking}) = Success;
  const factory TrackingState.empty() = Empty;
  const factory TrackingState.error({required String message}) = Error;
}
