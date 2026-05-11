import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class Review with _$Review {
  const Review._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory Review(
      {
      // F -- Fields
      required String id,
      required String userId,
      required String userName,
      String? userAvatar,
      required String comment,
      required DateTime createdAt,
      required double rating}) = _Review;

  // M -- Map: fromJson
  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
