// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateProfileRequest {
// F -- Fields
  String get country;
  String get state;
  String get city;
  String get homeStreet;
  String? get deliveryInstructions;
  String? get workCompany;
  String? get workCity;
  String? get workZipCode;
  String? get workStreet;

  /// Create a copy of CreateProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateProfileRequestCopyWith<CreateProfileRequest> get copyWith =>
      _$CreateProfileRequestCopyWithImpl<CreateProfileRequest>(
          this as CreateProfileRequest, _$identity);

  /// Serializes this CreateProfileRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProfileRequest &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.homeStreet, homeStreet) ||
                other.homeStreet == homeStreet) &&
            (identical(other.deliveryInstructions, deliveryInstructions) ||
                other.deliveryInstructions == deliveryInstructions) &&
            (identical(other.workCompany, workCompany) ||
                other.workCompany == workCompany) &&
            (identical(other.workCity, workCity) ||
                other.workCity == workCity) &&
            (identical(other.workZipCode, workZipCode) ||
                other.workZipCode == workZipCode) &&
            (identical(other.workStreet, workStreet) ||
                other.workStreet == workStreet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, state, city, homeStreet,
      deliveryInstructions, workCompany, workCity, workZipCode, workStreet);

  @override
  String toString() {
    return 'CreateProfileRequest(country: $country, state: $state, city: $city, homeStreet: $homeStreet, deliveryInstructions: $deliveryInstructions, workCompany: $workCompany, workCity: $workCity, workZipCode: $workZipCode, workStreet: $workStreet)';
  }
}

/// @nodoc
abstract mixin class $CreateProfileRequestCopyWith<$Res> {
  factory $CreateProfileRequestCopyWith(CreateProfileRequest value,
          $Res Function(CreateProfileRequest) _then) =
      _$CreateProfileRequestCopyWithImpl;
  @useResult
  $Res call(
      {String country,
      String state,
      String city,
      String homeStreet,
      String? deliveryInstructions,
      String? workCompany,
      String? workCity,
      String? workZipCode,
      String? workStreet});
}

/// @nodoc
class _$CreateProfileRequestCopyWithImpl<$Res>
    implements $CreateProfileRequestCopyWith<$Res> {
  _$CreateProfileRequestCopyWithImpl(this._self, this._then);

  final CreateProfileRequest _self;
  final $Res Function(CreateProfileRequest) _then;

  /// Create a copy of CreateProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? state = null,
    Object? city = null,
    Object? homeStreet = null,
    Object? deliveryInstructions = freezed,
    Object? workCompany = freezed,
    Object? workCity = freezed,
    Object? workZipCode = freezed,
    Object? workStreet = freezed,
  }) {
    return _then(_self.copyWith(
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      homeStreet: null == homeStreet
          ? _self.homeStreet
          : homeStreet // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryInstructions: freezed == deliveryInstructions
          ? _self.deliveryInstructions
          : deliveryInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      workCompany: freezed == workCompany
          ? _self.workCompany
          : workCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      workCity: freezed == workCity
          ? _self.workCity
          : workCity // ignore: cast_nullable_to_non_nullable
              as String?,
      workZipCode: freezed == workZipCode
          ? _self.workZipCode
          : workZipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      workStreet: freezed == workStreet
          ? _self.workStreet
          : workStreet // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateProfileRequest].
extension CreateProfileRequestPatterns on CreateProfileRequest {
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
    TResult Function(_CreateProfileRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProfileRequest() when $default != null:
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
    TResult Function(_CreateProfileRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProfileRequest():
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
    TResult? Function(_CreateProfileRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProfileRequest() when $default != null:
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
            String country,
            String state,
            String city,
            String homeStreet,
            String? deliveryInstructions,
            String? workCompany,
            String? workCity,
            String? workZipCode,
            String? workStreet)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProfileRequest() when $default != null:
        return $default(
            _that.country,
            _that.state,
            _that.city,
            _that.homeStreet,
            _that.deliveryInstructions,
            _that.workCompany,
            _that.workCity,
            _that.workZipCode,
            _that.workStreet);
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
            String country,
            String state,
            String city,
            String homeStreet,
            String? deliveryInstructions,
            String? workCompany,
            String? workCity,
            String? workZipCode,
            String? workStreet)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProfileRequest():
        return $default(
            _that.country,
            _that.state,
            _that.city,
            _that.homeStreet,
            _that.deliveryInstructions,
            _that.workCompany,
            _that.workCity,
            _that.workZipCode,
            _that.workStreet);
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
            String country,
            String state,
            String city,
            String homeStreet,
            String? deliveryInstructions,
            String? workCompany,
            String? workCity,
            String? workZipCode,
            String? workStreet)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProfileRequest() when $default != null:
        return $default(
            _that.country,
            _that.state,
            _that.city,
            _that.homeStreet,
            _that.deliveryInstructions,
            _that.workCompany,
            _that.workCity,
            _that.workZipCode,
            _that.workStreet);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateProfileRequest extends CreateProfileRequest {
  const _CreateProfileRequest(
      {required this.country,
      required this.state,
      required this.city,
      required this.homeStreet,
      this.deliveryInstructions,
      this.workCompany,
      this.workCity,
      this.workZipCode,
      this.workStreet})
      : super._();
  factory _CreateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateProfileRequestFromJson(json);

// F -- Fields
  @override
  final String country;
  @override
  final String state;
  @override
  final String city;
  @override
  final String homeStreet;
  @override
  final String? deliveryInstructions;
  @override
  final String? workCompany;
  @override
  final String? workCity;
  @override
  final String? workZipCode;
  @override
  final String? workStreet;

  /// Create a copy of CreateProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateProfileRequestCopyWith<_CreateProfileRequest> get copyWith =>
      __$CreateProfileRequestCopyWithImpl<_CreateProfileRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateProfileRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProfileRequest &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.homeStreet, homeStreet) ||
                other.homeStreet == homeStreet) &&
            (identical(other.deliveryInstructions, deliveryInstructions) ||
                other.deliveryInstructions == deliveryInstructions) &&
            (identical(other.workCompany, workCompany) ||
                other.workCompany == workCompany) &&
            (identical(other.workCity, workCity) ||
                other.workCity == workCity) &&
            (identical(other.workZipCode, workZipCode) ||
                other.workZipCode == workZipCode) &&
            (identical(other.workStreet, workStreet) ||
                other.workStreet == workStreet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, state, city, homeStreet,
      deliveryInstructions, workCompany, workCity, workZipCode, workStreet);

  @override
  String toString() {
    return 'CreateProfileRequest(country: $country, state: $state, city: $city, homeStreet: $homeStreet, deliveryInstructions: $deliveryInstructions, workCompany: $workCompany, workCity: $workCity, workZipCode: $workZipCode, workStreet: $workStreet)';
  }
}

/// @nodoc
abstract mixin class _$CreateProfileRequestCopyWith<$Res>
    implements $CreateProfileRequestCopyWith<$Res> {
  factory _$CreateProfileRequestCopyWith(_CreateProfileRequest value,
          $Res Function(_CreateProfileRequest) _then) =
      __$CreateProfileRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String country,
      String state,
      String city,
      String homeStreet,
      String? deliveryInstructions,
      String? workCompany,
      String? workCity,
      String? workZipCode,
      String? workStreet});
}

/// @nodoc
class __$CreateProfileRequestCopyWithImpl<$Res>
    implements _$CreateProfileRequestCopyWith<$Res> {
  __$CreateProfileRequestCopyWithImpl(this._self, this._then);

  final _CreateProfileRequest _self;
  final $Res Function(_CreateProfileRequest) _then;

  /// Create a copy of CreateProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? country = null,
    Object? state = null,
    Object? city = null,
    Object? homeStreet = null,
    Object? deliveryInstructions = freezed,
    Object? workCompany = freezed,
    Object? workCity = freezed,
    Object? workZipCode = freezed,
    Object? workStreet = freezed,
  }) {
    return _then(_CreateProfileRequest(
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      homeStreet: null == homeStreet
          ? _self.homeStreet
          : homeStreet // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryInstructions: freezed == deliveryInstructions
          ? _self.deliveryInstructions
          : deliveryInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      workCompany: freezed == workCompany
          ? _self.workCompany
          : workCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      workCity: freezed == workCity
          ? _self.workCity
          : workCity // ignore: cast_nullable_to_non_nullable
              as String?,
      workZipCode: freezed == workZipCode
          ? _self.workZipCode
          : workZipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      workStreet: freezed == workStreet
          ? _self.workStreet
          : workStreet // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
