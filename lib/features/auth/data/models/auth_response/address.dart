import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class Address with _$Address {
  const Address._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory Address({
    // F -- Fields
    required String id,
    required String city,
    required String state,
    required String country,
    required String homeAddress,
    required DateTime createdAt,
    DateTime? updatedAt,
    String? workAddress,
  }) = _Address;

  // M -- Map: fromJson
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
