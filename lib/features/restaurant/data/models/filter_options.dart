import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_options.freezed.dart';
part 'filter_options.g.dart';

// E -- Entity: ClassName represents a description
@freezed
abstract class FilterOptions with _$FilterOptions {
  const FilterOptions._(); // required for computed properties

  // I -- Immutability enforced by Freezed
  const factory FilterOptions({
    // F -- Fields
    double? minRating,
    bool? freeDelivery,
    bool? openNow,
    String? sortBy,
    @Default([]) List<DietaryPreference> dietary,
    @Default([]) List<CuisineType> cuisines,
    @Default([]) List<PriceRange> priceRange,
    @Default([]) List<Amenity> amenities,
    @Default([]) List<OrderType> orderTypes,
    @Default([]) List<PaymentMethod> paymentMethod,
    @Default([]) List<RestaurantTier> tiers,
  }) = _FilterOptions;

  static const FilterOptions empty = FilterOptions();

  // M -- Map: fromJson
  factory FilterOptions.fromJson(Map<String, dynamic> json) =>
      _$FilterOptionsFromJson(json);

  // V -- Validation / computed properties go here
  // bool get isValid => id.isNotEmpty;
}
