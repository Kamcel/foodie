import 'package:foodie/features/tracking/data/models/tracking_state.dart';
import 'package:foodie/features/tracking/data/repositories/tracking_repository.dart';
import 'package:foodie/features/tracking/data/services/tracking_services.dart';
import 'package:foodie/features/tracking/data/storage/tracking_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tracking_notifier.g.dart';

@riverpod
class TrackingNotifier extends _$TrackingNotifier {
  final _repository = TrackingRepository(
    service: TrackingService(),
    storage: TrackingStorage.instance,
  );
  final _storage = TrackingStorage.instance;

  @override
  TrackingState build() {
    return const TrackingState.loading();
  }

  // 1. LOAD TRACKING
  Future<void> loadTracking(String orderId) async {
    state = const TrackingState.loading();
    try {
      final result = await _repository.getTracking(orderId);
      state = TrackingState.success(tracking: result);
    } catch (e) {
      final cached = _storage.loadTracking();
      if (cached != null) {
        state = TrackingState.success(tracking: cached);
      } else {
        state = TrackingState.error(message: e.toString());
      }
    }
  }

  // 2. REFRESH TRACKING (poll for updates)
  Future<void> refreshTracking(String orderId) async {
    if (state is! Success) return;

    try {
      final result = await _repository.getTracking(orderId);
      state = TrackingState.success(tracking: result);
    } catch (_) {
      // Silently fail — keep showing cached data
    }
  }

  // 3. CLEAR TRACKING (when order is delivered)
  void clearTracking() {
    state = const TrackingState.loading();
  }
}
