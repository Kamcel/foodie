// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantAddress {
// F -- Fields
  String get street;
  String? get unit;
  String get city;
  String get state;
  String get zipCode;
  String get country;
  String? get label; // "Home", "Work"
  double? get latitude;
  double? get longitude;

  /// Create a copy of RestaurantAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestaurantAddressCopyWith<RestaurantAddress> get copyWith =>
      _$RestaurantAddressCopyWithImpl<RestaurantAddress>(
          this as RestaurantAddress, _$identity);

  /// Serializes this RestaurantAddress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestaurantAddress &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, street, unit, city, state,
      zipCode, country, label, latitude, longitude);

  @override
  String toString() {
    return 'RestaurantAddress(street: $street, unit: $unit, city: $city, state: $state, zipCode: $zipCode, country: $country, label: $label, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $RestaurantAddressCopyWith<$Res> {
  factory $RestaurantAddressCopyWith(
          RestaurantAddress value, $Res Function(RestaurantAddress) _then) =
      _$RestaurantAddressCopyWithImpl;
  @useResult
  $Res call(
      {String street,
      String? unit,
      String city,
      String state,
      String zipCode,
      String country,
      String? label,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$RestaurantAddressCopyWithImpl<$Res>
    implements $RestaurantAddressCopyWith<$Res> {
  _$RestaurantAddressCopyWithImpl(this._self, this._then);

  final RestaurantAddress _self;
  final $Res Function(RestaurantAddress) _then;

  /// Create a copy of RestaurantAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? unit = freezed,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? country = null,
    Object? label = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_self.copyWith(
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RestaurantAddress].
extension RestaurantAddressPatterns on RestaurantAddress {
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
    TResult Function(_RestaurantAddress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantAddress() when $default != null:
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
    TResult Function(_RestaurantAddress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantAddress():
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
    TResult? Function(_RestaurantAddress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantAddress() when $default != null:
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
            String street,
            String? unit,
            String city,
            String state,
            String zipCode,
            String country,
            String? label,
            double? latitude,
            double? longitude)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantAddress() when $default != null:
        return $default(
            _that.street,
            _that.unit,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.country,
            _that.label,
            _that.latitude,
            _that.longitude);
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
            String street,
            String? unit,
            String city,
            String state,
            String zipCode,
            String country,
            String? label,
            double? latitude,
            double? longitude)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantAddress():
        return $default(
            _that.street,
            _that.unit,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.country,
            _that.label,
            _that.latitude,
            _that.longitude);
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
            String street,
            String? unit,
            String city,
            String state,
            String zipCode,
            String country,
            String? label,
            double? latitude,
            double? longitude)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantAddress() when $default != null:
        return $default(
            _that.street,
            _that.unit,
            _that.city,
            _that.state,
            _that.zipCode,
            _that.country,
            _that.label,
            _that.latitude,
            _that.longitude);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RestaurantAddress extends RestaurantAddress {
  const _RestaurantAddress(
      {required this.street,
      this.unit,
      required this.city,
      required this.state,
      required this.zipCode,
      required this.country,
      this.label,
      this.latitude,
      this.longitude})
      : super._();
  factory _RestaurantAddress.fromJson(Map<String, dynamic> json) =>
      _$RestaurantAddressFromJson(json);

// F -- Fields
  @override
  final String street;
  @override
  final String? unit;
  @override
  final String city;
  @override
  final String state;
  @override
  final String zipCode;
  @override
  final String country;
  @override
  final String? label;
// "Home", "Work"
  @override
  final double? latitude;
  @override
  final double? longitude;

  /// Create a copy of RestaurantAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RestaurantAddressCopyWith<_RestaurantAddress> get copyWith =>
      __$RestaurantAddressCopyWithImpl<_RestaurantAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RestaurantAddressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestaurantAddress &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, street, unit, city, state,
      zipCode, country, label, latitude, longitude);

  @override
  String toString() {
    return 'RestaurantAddress(street: $street, unit: $unit, city: $city, state: $state, zipCode: $zipCode, country: $country, label: $label, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$RestaurantAddressCopyWith<$Res>
    implements $RestaurantAddressCopyWith<$Res> {
  factory _$RestaurantAddressCopyWith(
          _RestaurantAddress value, $Res Function(_RestaurantAddress) _then) =
      __$RestaurantAddressCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String street,
      String? unit,
      String city,
      String state,
      String zipCode,
      String country,
      String? label,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$RestaurantAddressCopyWithImpl<$Res>
    implements _$RestaurantAddressCopyWith<$Res> {
  __$RestaurantAddressCopyWithImpl(this._self, this._then);

  final _RestaurantAddress _self;
  final $Res Function(_RestaurantAddress) _then;

  /// Create a copy of RestaurantAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? street = null,
    Object? unit = freezed,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? country = null,
    Object? label = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_RestaurantAddress(
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
