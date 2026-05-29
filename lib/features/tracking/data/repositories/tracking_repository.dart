import 'package:foodie/features/tracking/data/models/tracking.dart';

import 'package:foodie/features/tracking/data/services/tracking_services.dart';
import 'package:foodie/features/tracking/data/storage/tracking_storage.dart';

class TrackingRepository {
  final TrackingService _service;
  final TrackingStorage _storage;

  TrackingRepository(
      {required TrackingService service, required TrackingStorage storage})
      : _service = service,
        _storage = storage;

  Future<Tracking> getTracking(String orderId) async {
    try {
      // Try API first
      final tracking = await _service.fetchTracking(orderId);
      // Cache for offline
      _storage.saveTracking(tracking);
      return tracking;
    } catch (e) {
      // If API fails, try Hive
      final cached = _storage.loadTracking();
      if (cached != null) return cached;
      // If both fail, rethrow
      rethrow;
    }
  }
}
