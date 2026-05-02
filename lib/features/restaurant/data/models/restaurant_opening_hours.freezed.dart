// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_opening_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantOpeningHours {
// F -- Fields
  DayOfWeek get dayOfWeek;
  String get openTime;
  String get closeTime;
  bool get is24Hours;
  bool get isClosed;
  List<RestaurantBreaktime> get breaks;

  /// Create a copy of RestaurantOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestaurantOpeningHoursCopyWith<RestaurantOpeningHours> get copyWith =>
      _$RestaurantOpeningHoursCopyWithImpl<RestaurantOpeningHours>(
          this as RestaurantOpeningHours, _$identity);

  /// Serializes this RestaurantOpeningHours to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestaurantOpeningHours &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime) &&
            (identical(other.is24Hours, is24Hours) ||
                other.is24Hours == is24Hours) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed) &&
            const DeepCollectionEquality().equals(other.breaks, breaks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dayOfWeek, openTime, closeTime,
      is24Hours, isClosed, const DeepCollectionEquality().hash(breaks));

  @override
  String toString() {
    return 'RestaurantOpeningHours(dayOfWeek: $dayOfWeek, openTime: $openTime, closeTime: $closeTime, is24Hours: $is24Hours, isClosed: $isClosed, breaks: $breaks)';
  }
}

/// @nodoc
abstract mixin class $RestaurantOpeningHoursCopyWith<$Res> {
  factory $RestaurantOpeningHoursCopyWith(RestaurantOpeningHours value,
          $Res Function(RestaurantOpeningHours) _then) =
      _$RestaurantOpeningHoursCopyWithImpl;
  @useResult
  $Res call(
      {DayOfWeek dayOfWeek,
      String openTime,
      String closeTime,
      bool is24Hours,
      bool isClosed,
      List<RestaurantBreaktime> breaks});
}

/// @nodoc
class _$RestaurantOpeningHoursCopyWithImpl<$Res>
    implements $RestaurantOpeningHoursCopyWith<$Res> {
  _$RestaurantOpeningHoursCopyWithImpl(this._self, this._then);

  final RestaurantOpeningHours _self;
  final $Res Function(RestaurantOpeningHours) _then;

  /// Create a copy of RestaurantOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? is24Hours = null,
    Object? isClosed = null,
    Object? breaks = null,
  }) {
    return _then(_self.copyWith(
      dayOfWeek: null == dayOfWeek
          ? _self.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      openTime: null == openTime
          ? _self.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _self.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      is24Hours: null == is24Hours
          ? _self.is24Hours
          : is24Hours // ignore: cast_nullable_to_non_nullable
              as bool,
      isClosed: null == isClosed
          ? _self.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      breaks: null == breaks
          ? _self.breaks
          : breaks // ignore: cast_nullable_to_non_nullable
              as List<RestaurantBreaktime>,
    ));
  }
}

/// Adds pattern-matching-related methods to [RestaurantOpeningHours].
extension RestaurantOpeningHoursPatterns on RestaurantOpeningHours {
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
    TResult Function(_RestaurantOpeningHours value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantOpeningHours() when $default != null:
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
    TResult Function(_RestaurantOpeningHours value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantOpeningHours():
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
    TResult? Function(_RestaurantOpeningHours value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantOpeningHours() when $default != null:
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
    TResult Function(DayOfWeek dayOfWeek, String openTime, String closeTime,
            bool is24Hours, bool isClosed, List<RestaurantBreaktime> breaks)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantOpeningHours() when $default != null:
        return $default(_that.dayOfWeek, _that.openTime, _that.closeTime,
            _that.is24Hours, _that.isClosed, _that.breaks);
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
    TResult Function(DayOfWeek dayOfWeek, String openTime, String closeTime,
            bool is24Hours, bool isClosed, List<RestaurantBreaktime> breaks)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantOpeningHours():
        return $default(_that.dayOfWeek, _that.openTime, _that.closeTime,
            _that.is24Hours, _that.isClosed, _that.breaks);
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
    TResult? Function(DayOfWeek dayOfWeek, String openTime, String closeTime,
            bool is24Hours, bool isClosed, List<RestaurantBreaktime> breaks)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantOpeningHours() when $default != null:
        return $default(_that.dayOfWeek, _that.openTime, _that.closeTime,
            _that.is24Hours, _that.isClosed, _that.breaks);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RestaurantOpeningHours extends RestaurantOpeningHours {
  const _RestaurantOpeningHours(
      {required this.dayOfWeek,
      required this.openTime,
      required this.closeTime,
      this.is24Hours = false,
      this.isClosed = false,
      final List<RestaurantBreaktime> breaks = const []})
      : _breaks = breaks,
        super._();
  factory _RestaurantOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$RestaurantOpeningHoursFromJson(json);

// F -- Fields
  @override
  final DayOfWeek dayOfWeek;
  @override
  final String openTime;
  @override
  final String closeTime;
  @override
  @JsonKey()
  final bool is24Hours;
  @override
  @JsonKey()
  final bool isClosed;
  final List<RestaurantBreaktime> _breaks;
  @override
  @JsonKey()
  List<RestaurantBreaktime> get breaks {
    if (_breaks is EqualUnmodifiableListView) return _breaks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breaks);
  }

  /// Create a copy of RestaurantOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RestaurantOpeningHoursCopyWith<_RestaurantOpeningHours> get copyWith =>
      __$RestaurantOpeningHoursCopyWithImpl<_RestaurantOpeningHours>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RestaurantOpeningHoursToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestaurantOpeningHours &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime) &&
            (identical(other.is24Hours, is24Hours) ||
                other.is24Hours == is24Hours) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed) &&
            const DeepCollectionEquality().equals(other._breaks, _breaks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dayOfWeek, openTime, closeTime,
      is24Hours, isClosed, const DeepCollectionEquality().hash(_breaks));

  @override
  String toString() {
    return 'RestaurantOpeningHours(dayOfWeek: $dayOfWeek, openTime: $openTime, closeTime: $closeTime, is24Hours: $is24Hours, isClosed: $isClosed, breaks: $breaks)';
  }
}

/// @nodoc
abstract mixin class _$RestaurantOpeningHoursCopyWith<$Res>
    implements $RestaurantOpeningHoursCopyWith<$Res> {
  factory _$RestaurantOpeningHoursCopyWith(_RestaurantOpeningHours value,
          $Res Function(_RestaurantOpeningHours) _then) =
      __$RestaurantOpeningHoursCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DayOfWeek dayOfWeek,
      String openTime,
      String closeTime,
      bool is24Hours,
      bool isClosed,
      List<RestaurantBreaktime> breaks});
}

/// @nodoc
class __$RestaurantOpeningHoursCopyWithImpl<$Res>
    implements _$RestaurantOpeningHoursCopyWith<$Res> {
  __$RestaurantOpeningHoursCopyWithImpl(this._self, this._then);

  final _RestaurantOpeningHours _self;
  final $Res Function(_RestaurantOpeningHours) _then;

  /// Create a copy of RestaurantOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dayOfWeek = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? is24Hours = null,
    Object? isClosed = null,
    Object? breaks = null,
  }) {
    return _then(_RestaurantOpeningHours(
      dayOfWeek: null == dayOfWeek
          ? _self.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      openTime: null == openTime
          ? _self.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _self.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      is24Hours: null == is24Hours
          ? _self.is24Hours
          : is24Hours // ignore: cast_nullable_to_non_nullable
              as bool,
      isClosed: null == isClosed
          ? _self.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      breaks: null == breaks
          ? _self._breaks
          : breaks // ignore: cast_nullable_to_non_nullable
              as List<RestaurantBreaktime>,
    ));
  }
}

// dart format on
