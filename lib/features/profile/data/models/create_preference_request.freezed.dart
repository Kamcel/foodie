// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_preference_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePreferenceRequest {
// F -- Fields
  List<DietaryPreference> get dietaryPrefernces;
  List<Allergy> get allergies;
  SpiceLevel? get spiceLevel;
  List<Cuisine> get cuisines;
  bool get orderUpdate;
  bool get dealsUpdate;
  bool get whatsappUpdates;

  /// Create a copy of CreatePreferenceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePreferenceRequestCopyWith<CreatePreferenceRequest> get copyWith =>
      _$CreatePreferenceRequestCopyWithImpl<CreatePreferenceRequest>(
          this as CreatePreferenceRequest, _$identity);

  /// Serializes this CreatePreferenceRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePreferenceRequest &&
            const DeepCollectionEquality()
                .equals(other.dietaryPrefernces, dietaryPrefernces) &&
            const DeepCollectionEquality().equals(other.allergies, allergies) &&
            (identical(other.spiceLevel, spiceLevel) ||
                other.spiceLevel == spiceLevel) &&
            const DeepCollectionEquality().equals(other.cuisines, cuisines) &&
            (identical(other.orderUpdate, orderUpdate) ||
                other.orderUpdate == orderUpdate) &&
            (identical(other.dealsUpdate, dealsUpdate) ||
                other.dealsUpdate == dealsUpdate) &&
            (identical(other.whatsappUpdates, whatsappUpdates) ||
                other.whatsappUpdates == whatsappUpdates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dietaryPrefernces),
      const DeepCollectionEquality().hash(allergies),
      spiceLevel,
      const DeepCollectionEquality().hash(cuisines),
      orderUpdate,
      dealsUpdate,
      whatsappUpdates);

  @override
  String toString() {
    return 'CreatePreferenceRequest(dietaryPrefernces: $dietaryPrefernces, allergies: $allergies, spiceLevel: $spiceLevel, cuisines: $cuisines, orderUpdate: $orderUpdate, dealsUpdate: $dealsUpdate, whatsappUpdates: $whatsappUpdates)';
  }
}

/// @nodoc
abstract mixin class $CreatePreferenceRequestCopyWith<$Res> {
  factory $CreatePreferenceRequestCopyWith(CreatePreferenceRequest value,
          $Res Function(CreatePreferenceRequest) _then) =
      _$CreatePreferenceRequestCopyWithImpl;
  @useResult
  $Res call(
      {List<DietaryPreference> dietaryPrefernces,
      List<Allergy> allergies,
      SpiceLevel? spiceLevel,
      List<Cuisine> cuisines,
      bool orderUpdate,
      bool dealsUpdate,
      bool whatsappUpdates});
}

/// @nodoc
class _$CreatePreferenceRequestCopyWithImpl<$Res>
    implements $CreatePreferenceRequestCopyWith<$Res> {
  _$CreatePreferenceRequestCopyWithImpl(this._self, this._then);

  final CreatePreferenceRequest _self;
  final $Res Function(CreatePreferenceRequest) _then;

  /// Create a copy of CreatePreferenceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dietaryPrefernces = null,
    Object? allergies = null,
    Object? spiceLevel = freezed,
    Object? cuisines = null,
    Object? orderUpdate = null,
    Object? dealsUpdate = null,
    Object? whatsappUpdates = null,
  }) {
    return _then(_self.copyWith(
      dietaryPrefernces: null == dietaryPrefernces
          ? _self.dietaryPrefernces
          : dietaryPrefernces // ignore: cast_nullable_to_non_nullable
              as List<DietaryPreference>,
      allergies: null == allergies
          ? _self.allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<Allergy>,
      spiceLevel: freezed == spiceLevel
          ? _self.spiceLevel
          : spiceLevel // ignore: cast_nullable_to_non_nullable
              as SpiceLevel?,
      cuisines: null == cuisines
          ? _self.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<Cuisine>,
      orderUpdate: null == orderUpdate
          ? _self.orderUpdate
          : orderUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      dealsUpdate: null == dealsUpdate
          ? _self.dealsUpdate
          : dealsUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      whatsappUpdates: null == whatsappUpdates
          ? _self.whatsappUpdates
          : whatsappUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePreferenceRequest].
extension CreatePreferenceRequestPatterns on CreatePreferenceRequest {
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
    TResult Function(_CreatePreferenceRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePreferenceRequest() when $default != null:
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
    TResult Function(_CreatePreferenceRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePreferenceRequest():
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
    TResult? Function(_CreatePreferenceRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePreferenceRequest() when $default != null:
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
            List<DietaryPreference> dietaryPrefernces,
            List<Allergy> allergies,
            SpiceLevel? spiceLevel,
            List<Cuisine> cuisines,
            bool orderUpdate,
            bool dealsUpdate,
            bool whatsappUpdates)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePreferenceRequest() when $default != null:
        return $default(
            _that.dietaryPrefernces,
            _that.allergies,
            _that.spiceLevel,
            _that.cuisines,
            _that.orderUpdate,
            _that.dealsUpdate,
            _that.whatsappUpdates);
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
            List<DietaryPreference> dietaryPrefernces,
            List<Allergy> allergies,
            SpiceLevel? spiceLevel,
            List<Cuisine> cuisines,
            bool orderUpdate,
            bool dealsUpdate,
            bool whatsappUpdates)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePreferenceRequest():
        return $default(
            _that.dietaryPrefernces,
            _that.allergies,
            _that.spiceLevel,
            _that.cuisines,
            _that.orderUpdate,
            _that.dealsUpdate,
            _that.whatsappUpdates);
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
            List<DietaryPreference> dietaryPrefernces,
            List<Allergy> allergies,
            SpiceLevel? spiceLevel,
            List<Cuisine> cuisines,
            bool orderUpdate,
            bool dealsUpdate,
            bool whatsappUpdates)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePreferenceRequest() when $default != null:
        return $default(
            _that.dietaryPrefernces,
            _that.allergies,
            _that.spiceLevel,
            _that.cuisines,
            _that.orderUpdate,
            _that.dealsUpdate,
            _that.whatsappUpdates);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreatePreferenceRequest extends CreatePreferenceRequest {
  const _CreatePreferenceRequest(
      {required final List<DietaryPreference> dietaryPrefernces,
      final List<Allergy> allergies = const [],
      this.spiceLevel,
      final List<Cuisine> cuisines = const [],
      this.orderUpdate = false,
      this.dealsUpdate = false,
      this.whatsappUpdates = false})
      : _dietaryPrefernces = dietaryPrefernces,
        _allergies = allergies,
        _cuisines = cuisines,
        super._();
  factory _CreatePreferenceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePreferenceRequestFromJson(json);

// F -- Fields
  final List<DietaryPreference> _dietaryPrefernces;
// F -- Fields
  @override
  List<DietaryPreference> get dietaryPrefernces {
    if (_dietaryPrefernces is EqualUnmodifiableListView)
      return _dietaryPrefernces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietaryPrefernces);
  }

  final List<Allergy> _allergies;
  @override
  @JsonKey()
  List<Allergy> get allergies {
    if (_allergies is EqualUnmodifiableListView) return _allergies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergies);
  }

  @override
  final SpiceLevel? spiceLevel;
  final List<Cuisine> _cuisines;
  @override
  @JsonKey()
  List<Cuisine> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  @override
  @JsonKey()
  final bool orderUpdate;
  @override
  @JsonKey()
  final bool dealsUpdate;
  @override
  @JsonKey()
  final bool whatsappUpdates;

  /// Create a copy of CreatePreferenceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePreferenceRequestCopyWith<_CreatePreferenceRequest> get copyWith =>
      __$CreatePreferenceRequestCopyWithImpl<_CreatePreferenceRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePreferenceRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePreferenceRequest &&
            const DeepCollectionEquality()
                .equals(other._dietaryPrefernces, _dietaryPrefernces) &&
            const DeepCollectionEquality()
                .equals(other._allergies, _allergies) &&
            (identical(other.spiceLevel, spiceLevel) ||
                other.spiceLevel == spiceLevel) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            (identical(other.orderUpdate, orderUpdate) ||
                other.orderUpdate == orderUpdate) &&
            (identical(other.dealsUpdate, dealsUpdate) ||
                other.dealsUpdate == dealsUpdate) &&
            (identical(other.whatsappUpdates, whatsappUpdates) ||
                other.whatsappUpdates == whatsappUpdates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dietaryPrefernces),
      const DeepCollectionEquality().hash(_allergies),
      spiceLevel,
      const DeepCollectionEquality().hash(_cuisines),
      orderUpdate,
      dealsUpdate,
      whatsappUpdates);

  @override
  String toString() {
    return 'CreatePreferenceRequest(dietaryPrefernces: $dietaryPrefernces, allergies: $allergies, spiceLevel: $spiceLevel, cuisines: $cuisines, orderUpdate: $orderUpdate, dealsUpdate: $dealsUpdate, whatsappUpdates: $whatsappUpdates)';
  }
}

/// @nodoc
abstract mixin class _$CreatePreferenceRequestCopyWith<$Res>
    implements $CreatePreferenceRequestCopyWith<$Res> {
  factory _$CreatePreferenceRequestCopyWith(_CreatePreferenceRequest value,
          $Res Function(_CreatePreferenceRequest) _then) =
      __$CreatePreferenceRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<DietaryPreference> dietaryPrefernces,
      List<Allergy> allergies,
      SpiceLevel? spiceLevel,
      List<Cuisine> cuisines,
      bool orderUpdate,
      bool dealsUpdate,
      bool whatsappUpdates});
}

/// @nodoc
class __$CreatePreferenceRequestCopyWithImpl<$Res>
    implements _$CreatePreferenceRequestCopyWith<$Res> {
  __$CreatePreferenceRequestCopyWithImpl(this._self, this._then);

  final _CreatePreferenceRequest _self;
  final $Res Function(_CreatePreferenceRequest) _then;

  /// Create a copy of CreatePreferenceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dietaryPrefernces = null,
    Object? allergies = null,
    Object? spiceLevel = freezed,
    Object? cuisines = null,
    Object? orderUpdate = null,
    Object? dealsUpdate = null,
    Object? whatsappUpdates = null,
  }) {
    return _then(_CreatePreferenceRequest(
      dietaryPrefernces: null == dietaryPrefernces
          ? _self._dietaryPrefernces
          : dietaryPrefernces // ignore: cast_nullable_to_non_nullable
              as List<DietaryPreference>,
      allergies: null == allergies
          ? _self._allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<Allergy>,
      spiceLevel: freezed == spiceLevel
          ? _self.spiceLevel
          : spiceLevel // ignore: cast_nullable_to_non_nullable
              as SpiceLevel?,
      cuisines: null == cuisines
          ? _self._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<Cuisine>,
      orderUpdate: null == orderUpdate
          ? _self.orderUpdate
          : orderUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      dealsUpdate: null == dealsUpdate
          ? _self.dealsUpdate
          : dealsUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      whatsappUpdates: null == whatsappUpdates
          ? _self.whatsappUpdates
          : whatsappUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
