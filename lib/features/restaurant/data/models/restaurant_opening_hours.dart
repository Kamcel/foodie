import 'package:foodie/features/restaurant/data/models/restaurant_breaktime.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_opening_hours.freezed.dart';
part 'restaurant_opening_hours.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class RestaurantOpeningHours with _$RestaurantOpeningHours {
  const RestaurantOpeningHours._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory RestaurantOpeningHours({
    // F -- Fields
    required DayOfWeek dayOfWeek,
    required String openTime,
    required String closeTime,
    @Default(false) bool is24Hours,
    @Default(false) bool isClosed,
    @Default([]) List<RestaurantBreaktime> breaks,
  }) = _RestaurantOpeningHours;

  // M -- Map: fromJson
  factory RestaurantOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$RestaurantOpeningHoursFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;

  String get displayHours => is24Hours
      ? 'Open 24 hours'
      : isClosed
          ? 'Closed'
          : '$openTime - $closeTime';
}
