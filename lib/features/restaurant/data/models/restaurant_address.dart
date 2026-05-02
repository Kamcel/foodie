import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_address.freezed.dart';
part 'restaurant_address.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class RestaurantAddress with _$RestaurantAddress {
  const RestaurantAddress._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory RestaurantAddress({
    // F -- Fields
    required String street,
    String? unit,
    required String city,
    required String state,
    required String zipCode,
    required String country,
    String? label, // "Home", "Work"
    double? latitude,
    double? longitude,
  }) = _RestaurantAddress;

  // M -- Map: fromJson
  factory RestaurantAddress.fromJson(Map<String, dynamic> json) =>
      _$RestaurantAddressFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;

  String get formatted => unit != null
      ? '$street, $unit, $city, $state $zipCode'
      : '$street, $city, $state $zipCode';
}
