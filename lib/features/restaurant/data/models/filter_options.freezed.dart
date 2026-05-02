// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FilterOptions {
// F -- Fields
  double? get minRating;
  bool? get freeDelivery;
  bool? get openNow;
  String? get sortBy;
  List<DietaryPreference> get dietary;
  List<CuisineType> get cuisines;
  List<PriceRange> get priceRange;
  List<Amenity> get amenities;
  List<OrderType> get orderTypes;
  List<PaymentMethod> get paymentMethod;
  List<RestaurantTier> get tiers;

  /// Create a copy of FilterOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FilterOptionsCopyWith<FilterOptions> get copyWith =>
      _$FilterOptionsCopyWithImpl<FilterOptions>(
          this as FilterOptions, _$identity);

  /// Serializes this FilterOptions to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilterOptions &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.freeDelivery, freeDelivery) ||
                other.freeDelivery == freeDelivery) &&
            (identical(other.openNow, openNow) || other.openNow == openNow) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            const DeepCollectionEquality().equals(other.dietary, dietary) &&
            const DeepCollectionEquality().equals(other.cuisines, cuisines) &&
            const DeepCollectionEquality()
                .equals(other.priceRange, priceRange) &&
            const DeepCollectionEquality().equals(other.amenities, amenities) &&
            const DeepCollectionEquality()
                .equals(other.orderTypes, orderTypes) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality().equals(other.tiers, tiers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      minRating,
      freeDelivery,
      openNow,
      sortBy,
      const DeepCollectionEquality().hash(dietary),
      const DeepCollectionEquality().hash(cuisines),
      const DeepCollectionEquality().hash(priceRange),
      const DeepCollectionEquality().hash(amenities),
      const DeepCollectionEquality().hash(orderTypes),
      const DeepCollectionEquality().hash(paymentMethod),
      const DeepCollectionEquality().hash(tiers));

  @override
  String toString() {
    return 'FilterOptions(minRating: $minRating, freeDelivery: $freeDelivery, openNow: $openNow, sortBy: $sortBy, dietary: $dietary, cuisines: $cuisines, priceRange: $priceRange, amenities: $amenities, orderTypes: $orderTypes, paymentMethod: $paymentMethod, tiers: $tiers)';
  }
}

/// @nodoc
abstract mixin class $FilterOptionsCopyWith<$Res> {
  factory $FilterOptionsCopyWith(
          FilterOptions value, $Res Function(FilterOptions) _then) =
      _$FilterOptionsCopyWithImpl;
  @useResult
  $Res call(
      {double? minRating,
      bool? freeDelivery,
      bool? openNow,
      String? sortBy,
      List<DietaryPreference> dietary,
      List<CuisineType> cuisines,
      List<PriceRange> priceRange,
      List<Amenity> amenities,
      List<OrderType> orderTypes,
      List<PaymentMethod> paymentMethod,
      List<RestaurantTier> tiers});
}

/// @nodoc
class _$FilterOptionsCopyWithImpl<$Res>
    implements $FilterOptionsCopyWith<$Res> {
  _$FilterOptionsCopyWithImpl(this._self, this._then);

  final FilterOptions _self;
  final $Res Function(FilterOptions) _then;

  /// Create a copy of FilterOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minRating = freezed,
    Object? freeDelivery = freezed,
    Object? openNow = freezed,
    Object? sortBy = freezed,
    Object? dietary = null,
    Object? cuisines = null,
    Object? priceRange = null,
    Object? amenities = null,
    Object? orderTypes = null,
    Object? paymentMethod = null,
    Object? tiers = null,
  }) {
    return _then(_self.copyWith(
      minRating: freezed == minRating
          ? _self.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      freeDelivery: freezed == freeDelivery
          ? _self.freeDelivery
          : freeDelivery // ignore: cast_nullable_to_non_nullable
              as bool?,
      openNow: freezed == openNow
          ? _self.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      dietary: null == dietary
          ? _self.dietary
          : dietary // ignore: cast_nullable_to_non_nullable
              as List<DietaryPreference>,
      cuisines: null == cuisines
          ? _self.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<CuisineType>,
      priceRange: null == priceRange
          ? _self.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as List<PriceRange>,
      amenities: null == amenities
          ? _self.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
      orderTypes: null == orderTypes
          ? _self.orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<OrderType>,
      paymentMethod: null == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>,
      tiers: null == tiers
          ? _self.tiers
          : tiers // ignore: cast_nullable_to_non_nullable
              as List<RestaurantTier>,
    ));
  }
}

/// Adds pattern-matching-related methods to [FilterOptions].
extension FilterOptionsPatterns on FilterOptions {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FilterOptions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FilterOptions() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FilterOptions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FilterOptions():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FilterOptions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FilterOptions() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            double? minRating,
            bool? freeDelivery,
            bool? openNow,
            String? sortBy,
            List<DietaryPreference> dietary,
            List<CuisineType> cuisines,
            List<PriceRange> priceRange,
            List<Amenity> amenities,
            List<OrderType> orderTypes,
            List<PaymentMethod> paymentMethod,
            List<RestaurantTier> tiers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FilterOptions() when $default != null:
        return $default(
            _that.minRating,
            _that.freeDelivery,
            _that.openNow,
            _that.sortBy,
            _that.dietary,
            _that.cuisines,
            _that.priceRange,
            _that.amenities,
            _that.orderTypes,
            _that.paymentMethod,
            _that.tiers);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            double? minRating,
            bool? freeDelivery,
            bool? openNow,
            String? sortBy,
            List<DietaryPreference> dietary,
            List<CuisineType> cuisines,
            List<PriceRange> priceRange,
            List<Amenity> amenities,
            List<OrderType> orderTypes,
            List<PaymentMethod> paymentMethod,
            List<RestaurantTier> tiers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FilterOptions():
        return $default(
            _that.minRating,
            _that.freeDelivery,
            _that.openNow,
            _that.sortBy,
            _that.dietary,
            _that.cuisines,
            _that.priceRange,
            _that.amenities,
            _that.orderTypes,
            _that.paymentMethod,
            _that.tiers);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            double? minRating,
            bool? freeDelivery,
            bool? openNow,
            String? sortBy,
            List<DietaryPreference> dietary,
            List<CuisineType> cuisines,
            List<PriceRange> priceRange,
            List<Amenity> amenities,
            List<OrderType> orderTypes,
            List<PaymentMethod> paymentMethod,
            List<RestaurantTier> tiers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FilterOptions() when $default != null:
        return $default(
            _that.minRating,
            _that.freeDelivery,
            _that.openNow,
            _that.sortBy,
            _that.dietary,
            _that.cuisines,
            _that.priceRange,
            _that.amenities,
            _that.orderTypes,
            _that.paymentMethod,
            _that.tiers);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FilterOptions extends FilterOptions {
  const _FilterOptions(
      {this.minRating,
      this.freeDelivery,
      this.openNow,
      this.sortBy,
      final List<DietaryPreference> dietary = const [],
      final List<CuisineType> cuisines = const [],
      final List<PriceRange> priceRange = const [],
      final List<Amenity> amenities = const [],
      final List<OrderType> orderTypes = const [],
      final List<PaymentMethod> paymentMethod = const [],
      final List<RestaurantTier> tiers = const []})
      : _dietary = dietary,
        _cuisines = cuisines,
        _priceRange = priceRange,
        _amenities = amenities,
        _orderTypes = orderTypes,
        _paymentMethod = paymentMethod,
        _tiers = tiers,
        super._();
  factory _FilterOptions.fromJson(Map<String, dynamic> json) =>
      _$FilterOptionsFromJson(json);

// F -- Fields
  @override
  final double? minRating;
  @override
  final bool? freeDelivery;
  @override
  final bool? openNow;
  @override
  final String? sortBy;
  final List<DietaryPreference> _dietary;
  @override
  @JsonKey()
  List<DietaryPreference> get dietary {
    if (_dietary is EqualUnmodifiableListView) return _dietary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietary);
  }

  final List<CuisineType> _cuisines;
  @override
  @JsonKey()
  List<CuisineType> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  final List<PriceRange> _priceRange;
  @override
  @JsonKey()
  List<PriceRange> get priceRange {
    if (_priceRange is EqualUnmodifiableListView) return _priceRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_priceRange);
  }

  final List<Amenity> _amenities;
  @override
  @JsonKey()
  List<Amenity> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  final List<OrderType> _orderTypes;
  @override
  @JsonKey()
  List<OrderType> get orderTypes {
    if (_orderTypes is EqualUnmodifiableListView) return _orderTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderTypes);
  }

  final List<PaymentMethod> _paymentMethod;
  @override
  @JsonKey()
  List<PaymentMethod> get paymentMethod {
    if (_paymentMethod is EqualUnmodifiableListView) return _paymentMethod;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethod);
  }

  final List<RestaurantTier> _tiers;
  @override
  @JsonKey()
  List<RestaurantTier> get tiers {
    if (_tiers is EqualUnmodifiableListView) return _tiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tiers);
  }

  /// Create a copy of FilterOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FilterOptionsCopyWith<_FilterOptions> get copyWith =>
      __$FilterOptionsCopyWithImpl<_FilterOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FilterOptionsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilterOptions &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.freeDelivery, freeDelivery) ||
                other.freeDelivery == freeDelivery) &&
            (identical(other.openNow, openNow) || other.openNow == openNow) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            const DeepCollectionEquality().equals(other._dietary, _dietary) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            const DeepCollectionEquality()
                .equals(other._priceRange, _priceRange) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            const DeepCollectionEquality()
                .equals(other._orderTypes, _orderTypes) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethod, _paymentMethod) &&
            const DeepCollectionEquality().equals(other._tiers, _tiers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      minRating,
      freeDelivery,
      openNow,
      sortBy,
      const DeepCollectionEquality().hash(_dietary),
      const DeepCollectionEquality().hash(_cuisines),
      const DeepCollectionEquality().hash(_priceRange),
      const DeepCollectionEquality().hash(_amenities),
      const DeepCollectionEquality().hash(_orderTypes),
      const DeepCollectionEquality().hash(_paymentMethod),
      const DeepCollectionEquality().hash(_tiers));

  @override
  String toString() {
    return 'FilterOptions(minRating: $minRating, freeDelivery: $freeDelivery, openNow: $openNow, sortBy: $sortBy, dietary: $dietary, cuisines: $cuisines, priceRange: $priceRange, amenities: $amenities, orderTypes: $orderTypes, paymentMethod: $paymentMethod, tiers: $tiers)';
  }
}

/// @nodoc
abstract mixin class _$FilterOptionsCopyWith<$Res>
    implements $FilterOptionsCopyWith<$Res> {
  factory _$FilterOptionsCopyWith(
          _FilterOptions value, $Res Function(_FilterOptions) _then) =
      __$FilterOptionsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? minRating,
      bool? freeDelivery,
      bool? openNow,
      String? sortBy,
      List<DietaryPreference> dietary,
      List<CuisineType> cuisines,
      List<PriceRange> priceRange,
      List<Amenity> amenities,
      List<OrderType> orderTypes,
      List<PaymentMethod> paymentMethod,
      List<RestaurantTier> tiers});
}

/// @nodoc
class __$FilterOptionsCopyWithImpl<$Res>
    implements _$FilterOptionsCopyWith<$Res> {
  __$FilterOptionsCopyWithImpl(this._self, this._then);

  final _FilterOptions _self;
  final $Res Function(_FilterOptions) _then;

  /// Create a copy of FilterOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? minRating = freezed,
    Object? freeDelivery = freezed,
    Object? openNow = freezed,
    Object? sortBy = freezed,
    Object? dietary = null,
    Object? cuisines = null,
    Object? priceRange = null,
    Object? amenities = null,
    Object? orderTypes = null,
    Object? paymentMethod = null,
    Object? tiers = null,
  }) {
    return _then(_FilterOptions(
      minRating: freezed == minRating
          ? _self.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      freeDelivery: freezed == freeDelivery
          ? _self.freeDelivery
          : freeDelivery // ignore: cast_nullable_to_non_nullable
              as bool?,
      openNow: freezed == openNow
          ? _self.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      dietary: null == dietary
          ? _self._dietary
          : dietary // ignore: cast_nullable_to_non_nullable
              as List<DietaryPreference>,
      cuisines: null == cuisines
          ? _self._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<CuisineType>,
      priceRange: null == priceRange
          ? _self._priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as List<PriceRange>,
      amenities: null == amenities
          ? _self._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
      orderTypes: null == orderTypes
          ? _self._orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<OrderType>,
      paymentMethod: null == paymentMethod
          ? _self._paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>,
      tiers: null == tiers
          ? _self._tiers
          : tiers // ignore: cast_nullable_to_non_nullable
              as List<RestaurantTier>,
    ));
  }
}

// dart format on
