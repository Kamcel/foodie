// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationState {
// F -- Fields
//Lists with empty defaults
  List<LocationModel> get countries;
  List<LocationModel> get states;
  List<LocationModel> get cities; //Selected values(null by default)
  LocationModel? get selectedCountry;
  LocationModel? get selectedState;
  LocationModel? get selectedCity; //Loading flags per operation
  bool get isLoadingCountries;
  bool get isLoadingStates;
  bool get isLoadingCities; //Error message
  String? get errorMessage;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationStateCopyWith<LocationState> get copyWith =>
      _$LocationStateCopyWithImpl<LocationState>(
          this as LocationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationState &&
            const DeepCollectionEquality().equals(other.countries, countries) &&
            const DeepCollectionEquality().equals(other.states, states) &&
            const DeepCollectionEquality().equals(other.cities, cities) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            (identical(other.selectedState, selectedState) ||
                other.selectedState == selectedState) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity) &&
            (identical(other.isLoadingCountries, isLoadingCountries) ||
                other.isLoadingCountries == isLoadingCountries) &&
            (identical(other.isLoadingStates, isLoadingStates) ||
                other.isLoadingStates == isLoadingStates) &&
            (identical(other.isLoadingCities, isLoadingCities) ||
                other.isLoadingCities == isLoadingCities) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(countries),
      const DeepCollectionEquality().hash(states),
      const DeepCollectionEquality().hash(cities),
      selectedCountry,
      selectedState,
      selectedCity,
      isLoadingCountries,
      isLoadingStates,
      isLoadingCities,
      errorMessage);

  @override
  String toString() {
    return 'LocationState(countries: $countries, states: $states, cities: $cities, selectedCountry: $selectedCountry, selectedState: $selectedState, selectedCity: $selectedCity, isLoadingCountries: $isLoadingCountries, isLoadingStates: $isLoadingStates, isLoadingCities: $isLoadingCities, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) _then) =
      _$LocationStateCopyWithImpl;
  @useResult
  $Res call(
      {List<LocationModel> countries,
      List<LocationModel> states,
      List<LocationModel> cities,
      LocationModel? selectedCountry,
      LocationModel? selectedState,
      LocationModel? selectedCity,
      bool isLoadingCountries,
      bool isLoadingStates,
      bool isLoadingCities,
      String? errorMessage});

  $LocationModelCopyWith<$Res>? get selectedCountry;
  $LocationModelCopyWith<$Res>? get selectedState;
  $LocationModelCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._self, this._then);

  final LocationState _self;
  final $Res Function(LocationState) _then;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
    Object? states = null,
    Object? cities = null,
    Object? selectedCountry = freezed,
    Object? selectedState = freezed,
    Object? selectedCity = freezed,
    Object? isLoadingCountries = null,
    Object? isLoadingStates = null,
    Object? isLoadingCities = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      countries: null == countries
          ? _self.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      states: null == states
          ? _self.states
          : states // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      cities: null == cities
          ? _self.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      selectedCountry: freezed == selectedCountry
          ? _self.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      selectedState: freezed == selectedState
          ? _self.selectedState
          : selectedState // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      selectedCity: freezed == selectedCity
          ? _self.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      isLoadingCountries: null == isLoadingCountries
          ? _self.isLoadingCountries
          : isLoadingCountries // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingStates: null == isLoadingStates
          ? _self.isLoadingStates
          : isLoadingStates // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCities: null == isLoadingCities
          ? _self.isLoadingCities
          : isLoadingCities // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectedCountry {
    if (_self.selectedCountry == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectedCountry!, (value) {
      return _then(_self.copyWith(selectedCountry: value));
    });
  }

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectedState {
    if (_self.selectedState == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectedState!, (value) {
      return _then(_self.copyWith(selectedState: value));
    });
  }

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectedCity {
    if (_self.selectedCity == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectedCity!, (value) {
      return _then(_self.copyWith(selectedCity: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LocationState].
extension LocationStatePatterns on LocationState {
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
    TResult Function(_LocationState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationState() when $default != null:
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
    TResult Function(_LocationState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationState():
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
    TResult? Function(_LocationState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationState() when $default != null:
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
            List<LocationModel> countries,
            List<LocationModel> states,
            List<LocationModel> cities,
            LocationModel? selectedCountry,
            LocationModel? selectedState,
            LocationModel? selectedCity,
            bool isLoadingCountries,
            bool isLoadingStates,
            bool isLoadingCities,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationState() when $default != null:
        return $default(
            _that.countries,
            _that.states,
            _that.cities,
            _that.selectedCountry,
            _that.selectedState,
            _that.selectedCity,
            _that.isLoadingCountries,
            _that.isLoadingStates,
            _that.isLoadingCities,
            _that.errorMessage);
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
            List<LocationModel> countries,
            List<LocationModel> states,
            List<LocationModel> cities,
            LocationModel? selectedCountry,
            LocationModel? selectedState,
            LocationModel? selectedCity,
            bool isLoadingCountries,
            bool isLoadingStates,
            bool isLoadingCities,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationState():
        return $default(
            _that.countries,
            _that.states,
            _that.cities,
            _that.selectedCountry,
            _that.selectedState,
            _that.selectedCity,
            _that.isLoadingCountries,
            _that.isLoadingStates,
            _that.isLoadingCities,
            _that.errorMessage);
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
            List<LocationModel> countries,
            List<LocationModel> states,
            List<LocationModel> cities,
            LocationModel? selectedCountry,
            LocationModel? selectedState,
            LocationModel? selectedCity,
            bool isLoadingCountries,
            bool isLoadingStates,
            bool isLoadingCities,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationState() when $default != null:
        return $default(
            _that.countries,
            _that.states,
            _that.cities,
            _that.selectedCountry,
            _that.selectedState,
            _that.selectedCity,
            _that.isLoadingCountries,
            _that.isLoadingStates,
            _that.isLoadingCities,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LocationState extends LocationState {
  const _LocationState(
      {final List<LocationModel> countries = const [],
      final List<LocationModel> states = const [],
      final List<LocationModel> cities = const [],
      this.selectedCountry,
      this.selectedState,
      this.selectedCity,
      this.isLoadingCountries = false,
      this.isLoadingStates = false,
      this.isLoadingCities = false,
      this.errorMessage})
      : _countries = countries,
        _states = states,
        _cities = cities,
        super._();

// F -- Fields
//Lists with empty defaults
  final List<LocationModel> _countries;
// F -- Fields
//Lists with empty defaults
  @override
  @JsonKey()
  List<LocationModel> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  final List<LocationModel> _states;
  @override
  @JsonKey()
  List<LocationModel> get states {
    if (_states is EqualUnmodifiableListView) return _states;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_states);
  }

  final List<LocationModel> _cities;
  @override
  @JsonKey()
  List<LocationModel> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

//Selected values(null by default)
  @override
  final LocationModel? selectedCountry;
  @override
  final LocationModel? selectedState;
  @override
  final LocationModel? selectedCity;
//Loading flags per operation
  @override
  @JsonKey()
  final bool isLoadingCountries;
  @override
  @JsonKey()
  final bool isLoadingStates;
  @override
  @JsonKey()
  final bool isLoadingCities;
//Error message
  @override
  final String? errorMessage;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationState &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            (identical(other.selectedState, selectedState) ||
                other.selectedState == selectedState) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity) &&
            (identical(other.isLoadingCountries, isLoadingCountries) ||
                other.isLoadingCountries == isLoadingCountries) &&
            (identical(other.isLoadingStates, isLoadingStates) ||
                other.isLoadingStates == isLoadingStates) &&
            (identical(other.isLoadingCities, isLoadingCities) ||
                other.isLoadingCities == isLoadingCities) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_countries),
      const DeepCollectionEquality().hash(_states),
      const DeepCollectionEquality().hash(_cities),
      selectedCountry,
      selectedState,
      selectedCity,
      isLoadingCountries,
      isLoadingStates,
      isLoadingCities,
      errorMessage);

  @override
  String toString() {
    return 'LocationState(countries: $countries, states: $states, cities: $cities, selectedCountry: $selectedCountry, selectedState: $selectedState, selectedCity: $selectedCity, isLoadingCountries: $isLoadingCountries, isLoadingStates: $isLoadingStates, isLoadingCities: $isLoadingCities, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(
          _LocationState value, $Res Function(_LocationState) _then) =
      __$LocationStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<LocationModel> countries,
      List<LocationModel> states,
      List<LocationModel> cities,
      LocationModel? selectedCountry,
      LocationModel? selectedState,
      LocationModel? selectedCity,
      bool isLoadingCountries,
      bool isLoadingStates,
      bool isLoadingCities,
      String? errorMessage});

  @override
  $LocationModelCopyWith<$Res>? get selectedCountry;
  @override
  $LocationModelCopyWith<$Res>? get selectedState;
  @override
  $LocationModelCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class __$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(this._self, this._then);

  final _LocationState _self;
  final $Res Function(_LocationState) _then;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? countries = null,
    Object? states = null,
    Object? cities = null,
    Object? selectedCountry = freezed,
    Object? selectedState = freezed,
    Object? selectedCity = freezed,
    Object? isLoadingCountries = null,
    Object? isLoadingStates = null,
    Object? isLoadingCities = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_LocationState(
      countries: null == countries
          ? _self._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      states: null == states
          ? _self._states
          : states // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      cities: null == cities
          ? _self._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      selectedCountry: freezed == selectedCountry
          ? _self.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      selectedState: freezed == selectedState
          ? _self.selectedState
          : selectedState // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      selectedCity: freezed == selectedCity
          ? _self.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      isLoadingCountries: null == isLoadingCountries
          ? _self.isLoadingCountries
          : isLoadingCountries // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingStates: null == isLoadingStates
          ? _self.isLoadingStates
          : isLoadingStates // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCities: null == isLoadingCities
          ? _self.isLoadingCities
          : isLoadingCities // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectedCountry {
    if (_self.selectedCountry == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectedCountry!, (value) {
      return _then(_self.copyWith(selectedCountry: value));
    });
  }

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectedState {
    if (_self.selectedState == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectedState!, (value) {
      return _then(_self.copyWith(selectedState: value));
    });
  }

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectedCity {
    if (_self.selectedCity == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectedCity!, (value) {
      return _then(_self.copyWith(selectedCity: value));
    });
  }
}

// dart format on
