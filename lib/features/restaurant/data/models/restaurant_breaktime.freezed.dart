// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_breaktime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantBreaktime {
// F -- Fields
  String get start;
  String get end;
  String? get reason;

  /// Create a copy of RestaurantBreaktime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestaurantBreaktimeCopyWith<RestaurantBreaktime> get copyWith =>
      _$RestaurantBreaktimeCopyWithImpl<RestaurantBreaktime>(
          this as RestaurantBreaktime, _$identity);

  /// Serializes this RestaurantBreaktime to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestaurantBreaktime &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, reason);

  @override
  String toString() {
    return 'RestaurantBreaktime(start: $start, end: $end, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $RestaurantBreaktimeCopyWith<$Res> {
  factory $RestaurantBreaktimeCopyWith(
          RestaurantBreaktime value, $Res Function(RestaurantBreaktime) _then) =
      _$RestaurantBreaktimeCopyWithImpl;
  @useResult
  $Res call({String start, String end, String? reason});
}

/// @nodoc
class _$RestaurantBreaktimeCopyWithImpl<$Res>
    implements $RestaurantBreaktimeCopyWith<$Res> {
  _$RestaurantBreaktimeCopyWithImpl(this._self, this._then);

  final RestaurantBreaktime _self;
  final $Res Function(RestaurantBreaktime) _then;

  /// Create a copy of RestaurantBreaktime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? reason = freezed,
  }) {
    return _then(_self.copyWith(
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RestaurantBreaktime].
extension RestaurantBreaktimePatterns on RestaurantBreaktime {
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
    TResult Function(_RestaurantBreaktime value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantBreaktime() when $default != null:
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
    TResult Function(_RestaurantBreaktime value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantBreaktime():
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
    TResult? Function(_RestaurantBreaktime value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantBreaktime() when $default != null:
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
    TResult Function(String start, String end, String? reason)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantBreaktime() when $default != null:
        return $default(_that.start, _that.end, _that.reason);
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
    TResult Function(String start, String end, String? reason) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantBreaktime():
        return $default(_that.start, _that.end, _that.reason);
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
    TResult? Function(String start, String end, String? reason)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantBreaktime() when $default != null:
        return $default(_that.start, _that.end, _that.reason);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RestaurantBreaktime extends RestaurantBreaktime {
  const _RestaurantBreaktime(
      {required this.start, required this.end, this.reason})
      : super._();
  factory _RestaurantBreaktime.fromJson(Map<String, dynamic> json) =>
      _$RestaurantBreaktimeFromJson(json);

// F -- Fields
  @override
  final String start;
  @override
  final String end;
  @override
  final String? reason;

  /// Create a copy of RestaurantBreaktime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RestaurantBreaktimeCopyWith<_RestaurantBreaktime> get copyWith =>
      __$RestaurantBreaktimeCopyWithImpl<_RestaurantBreaktime>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RestaurantBreaktimeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestaurantBreaktime &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, reason);

  @override
  String toString() {
    return 'RestaurantBreaktime(start: $start, end: $end, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class _$RestaurantBreaktimeCopyWith<$Res>
    implements $RestaurantBreaktimeCopyWith<$Res> {
  factory _$RestaurantBreaktimeCopyWith(_RestaurantBreaktime value,
          $Res Function(_RestaurantBreaktime) _then) =
      __$RestaurantBreaktimeCopyWithImpl;
  @override
  @useResult
  $Res call({String start, String end, String? reason});
}

/// @nodoc
class __$RestaurantBreaktimeCopyWithImpl<$Res>
    implements _$RestaurantBreaktimeCopyWith<$Res> {
  __$RestaurantBreaktimeCopyWithImpl(this._self, this._then);

  final _RestaurantBreaktime _self;
  final $Res Function(_RestaurantBreaktime) _then;

  /// Create a copy of RestaurantBreaktime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? reason = freezed,
  }) {
    return _then(_RestaurantBreaktime(
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
