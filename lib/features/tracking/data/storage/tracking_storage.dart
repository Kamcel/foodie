import 'package:foodie/features/tracking/data/models/tracking.dart';
import 'package:hive_ce/hive.dart';

// ── TrackingStorage ─────────────────────────────────────────

class TrackingStorage {
  TrackingStorage._();
  static final instance = TrackingStorage._();

  static const _boxName = 'tracking';
  static const _key = 'tracking_data';

  Box get _box => Hive.box(_boxName);

  Tracking? loadTracking() {
    final raw = _box.get(_key);
    if (raw == null) return null;
    return Tracking.fromJson(Map<String, dynamic>.from(raw));
  }

  void saveTracking(Tracking tracking) {
    _box.put(_key, tracking.toJson());
  }

  void clearTracking() {
    _box.delete(_key);
  }
}
