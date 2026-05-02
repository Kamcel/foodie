import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_breaktime.freezed.dart';
part 'restaurant_breaktime.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class RestaurantBreaktime with _$RestaurantBreaktime {
  const RestaurantBreaktime._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory RestaurantBreaktime({
    // F -- Fields
    required String start,
    required String end,
    String? reason,
  }) = _RestaurantBreaktime;

  // M -- Map: fromJson
  factory RestaurantBreaktime.fromJson(Map<String, dynamic> json) =>
      _$RestaurantBreaktimeFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
