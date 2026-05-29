// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tracking {
  String get orderId;
  TrackingProgress get currentProgress;
  String get driverName;
  String get driverPhone;
  int get globalEtaMinutes;
  DateTime get confirmedAt;
  DateTime? get preparingAt;
  DateTime? get pickedUpAt;
  DateTime? get deliveredAt;
  double? get driverLatitude;
  double? get driverLongitude;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TrackingCopyWith<Tracking> get copyWith =>
      _$TrackingCopyWithImpl<Tracking>(this as Tracking, _$identity);

  /// Serializes this Tracking to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Tracking &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.currentProgress, currentProgress) ||
                other.currentProgress == currentProgress) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.driverPhone, driverPhone) ||
                other.driverPhone == driverPhone) &&
            (identical(other.globalEtaMinutes, globalEtaMinutes) ||
                other.globalEtaMinutes == globalEtaMinutes) &&
            (identical(other.confirmedAt, confirmedAt) ||
                other.confirmedAt == confirmedAt) &&
            (identical(other.preparingAt, preparingAt) ||
                other.preparingAt == preparingAt) &&
            (identical(other.pickedUpAt, pickedUpAt) ||
                other.pickedUpAt == pickedUpAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.driverLatitude, driverLatitude) ||
                other.driverLatitude == driverLatitude) &&
            (identical(other.driverLongitude, driverLongitude) ||
                other.driverLongitude == driverLongitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      currentProgress,
      driverName,
      driverPhone,
      globalEtaMinutes,
      confirmedAt,
      preparingAt,
      pickedUpAt,
      deliveredAt,
      driverLatitude,
      driverLongitude);

  @override
  String toString() {
    return 'Tracking(orderId: $orderId, currentProgress: $currentProgress, driverName: $driverName, driverPhone: $driverPhone, globalEtaMinutes: $globalEtaMinutes, confirmedAt: $confirmedAt, preparingAt: $preparingAt, pickedUpAt: $pickedUpAt, deliveredAt: $deliveredAt, driverLatitude: $driverLatitude, driverLongitude: $driverLongitude)';
  }
}

/// @nodoc
abstract mixin class $TrackingCopyWith<$Res> {
  factory $TrackingCopyWith(Tracking value, $Res Function(Tracking) _then) =
      _$TrackingCopyWithImpl;
  @useResult
  $Res call(
      {String orderId,
      TrackingProgress currentProgress,
      String driverName,
      String driverPhone,
      int globalEtaMinutes,
      DateTime confirmedAt,
      DateTime? preparingAt,
      DateTime? pickedUpAt,
      DateTime? deliveredAt,
      double? driverLatitude,
      double? driverLongitude});
}

/// @nodoc
class _$TrackingCopyWithImpl<$Res> implements $TrackingCopyWith<$Res> {
  _$TrackingCopyWithImpl(this._self, this._then);

  final Tracking _self;
  final $Res Function(Tracking) _then;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? currentProgress = null,
    Object? driverName = null,
    Object? driverPhone = null,
    Object? globalEtaMinutes = null,
    Object? confirmedAt = null,
    Object? preparingAt = freezed,
    Object? pickedUpAt = freezed,
    Object? deliveredAt = freezed,
    Object? driverLatitude = freezed,
    Object? driverLongitude = freezed,
  }) {
    return _then(_self.copyWith(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      currentProgress: null == currentProgress
          ? _self.currentProgress
          : currentProgress // ignore: cast_nullable_to_non_nullable
              as TrackingProgress,
      driverName: null == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String,
      driverPhone: null == driverPhone
          ? _self.driverPhone
          : driverPhone // ignore: cast_nullable_to_non_nullable
              as String,
      globalEtaMinutes: null == globalEtaMinutes
          ? _self.globalEtaMinutes
          : globalEtaMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      confirmedAt: null == confirmedAt
          ? _self.confirmedAt
          : confirmedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      preparingAt: freezed == preparingAt
          ? _self.preparingAt
          : preparingAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pickedUpAt: freezed == pickedUpAt
          ? _self.pickedUpAt
          : pickedUpAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredAt: freezed == deliveredAt
          ? _self.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      driverLatitude: freezed == driverLatitude
          ? _self.driverLatitude
          : driverLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      driverLongitude: freezed == driverLongitude
          ? _self.driverLongitude
          : driverLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Tracking].
extension TrackingPatterns on Tracking {
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
    TResult Function(_Tracking value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Tracking() when $default != null:
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
    TResult Function(_Tracking value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tracking():
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
    TResult? Function(_Tracking value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tracking() when $default != null:
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
            String orderId,
            TrackingProgress currentProgress,
            String driverName,
            String driverPhone,
            int globalEtaMinutes,
            DateTime confirmedAt,
            DateTime? preparingAt,
            DateTime? pickedUpAt,
            DateTime? deliveredAt,
            double? driverLatitude,
            double? driverLongitude)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Tracking() when $default != null:
        return $default(
            _that.orderId,
            _that.currentProgress,
            _that.driverName,
            _that.driverPhone,
            _that.globalEtaMinutes,
            _that.confirmedAt,
            _that.preparingAt,
            _that.pickedUpAt,
            _that.deliveredAt,
            _that.driverLatitude,
            _that.driverLongitude);
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
            String orderId,
            TrackingProgress currentProgress,
            String driverName,
            String driverPhone,
            int globalEtaMinutes,
            DateTime confirmedAt,
            DateTime? preparingAt,
            DateTime? pickedUpAt,
            DateTime? deliveredAt,
            double? driverLatitude,
            double? driverLongitude)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tracking():
        return $default(
            _that.orderId,
            _that.currentProgress,
            _that.driverName,
            _that.driverPhone,
            _that.globalEtaMinutes,
            _that.confirmedAt,
            _that.preparingAt,
            _that.pickedUpAt,
            _that.deliveredAt,
            _that.driverLatitude,
            _that.driverLongitude);
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
            String orderId,
            TrackingProgress currentProgress,
            String driverName,
            String driverPhone,
            int globalEtaMinutes,
            DateTime confirmedAt,
            DateTime? preparingAt,
            DateTime? pickedUpAt,
            DateTime? deliveredAt,
            double? driverLatitude,
            double? driverLongitude)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tracking() when $default != null:
        return $default(
            _that.orderId,
            _that.currentProgress,
            _that.driverName,
            _that.driverPhone,
            _that.globalEtaMinutes,
            _that.confirmedAt,
            _that.preparingAt,
            _that.pickedUpAt,
            _that.deliveredAt,
            _that.driverLatitude,
            _that.driverLongitude);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Tracking implements Tracking {
  const _Tracking(
      {required this.orderId,
      required this.currentProgress,
      required this.driverName,
      required this.driverPhone,
      required this.globalEtaMinutes,
      required this.confirmedAt,
      this.preparingAt,
      this.pickedUpAt,
      this.deliveredAt,
      this.driverLatitude,
      this.driverLongitude});
  factory _Tracking.fromJson(Map<String, dynamic> json) =>
      _$TrackingFromJson(json);

  @override
  final String orderId;
  @override
  final TrackingProgress currentProgress;
  @override
  final String driverName;
  @override
  final String driverPhone;
  @override
  final int globalEtaMinutes;
  @override
  final DateTime confirmedAt;
  @override
  final DateTime? preparingAt;
  @override
  final DateTime? pickedUpAt;
  @override
  final DateTime? deliveredAt;
  @override
  final double? driverLatitude;
  @override
  final double? driverLongitude;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrackingCopyWith<_Tracking> get copyWith =>
      __$TrackingCopyWithImpl<_Tracking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TrackingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tracking &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.currentProgress, currentProgress) ||
                other.currentProgress == currentProgress) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.driverPhone, driverPhone) ||
                other.driverPhone == driverPhone) &&
            (identical(other.globalEtaMinutes, globalEtaMinutes) ||
                other.globalEtaMinutes == globalEtaMinutes) &&
            (identical(other.confirmedAt, confirmedAt) ||
                other.confirmedAt == confirmedAt) &&
            (identical(other.preparingAt, preparingAt) ||
                other.preparingAt == preparingAt) &&
            (identical(other.pickedUpAt, pickedUpAt) ||
                other.pickedUpAt == pickedUpAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.driverLatitude, driverLatitude) ||
                other.driverLatitude == driverLatitude) &&
            (identical(other.driverLongitude, driverLongitude) ||
                other.driverLongitude == driverLongitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      currentProgress,
      driverName,
      driverPhone,
      globalEtaMinutes,
      confirmedAt,
      preparingAt,
      pickedUpAt,
      deliveredAt,
      driverLatitude,
      driverLongitude);

  @override
  String toString() {
    return 'Tracking(orderId: $orderId, currentProgress: $currentProgress, driverName: $driverName, driverPhone: $driverPhone, globalEtaMinutes: $globalEtaMinutes, confirmedAt: $confirmedAt, preparingAt: $preparingAt, pickedUpAt: $pickedUpAt, deliveredAt: $deliveredAt, driverLatitude: $driverLatitude, driverLongitude: $driverLongitude)';
  }
}

/// @nodoc
abstract mixin class _$TrackingCopyWith<$Res>
    implements $TrackingCopyWith<$Res> {
  factory _$TrackingCopyWith(_Tracking value, $Res Function(_Tracking) _then) =
      __$TrackingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String orderId,
      TrackingProgress currentProgress,
      String driverName,
      String driverPhone,
      int globalEtaMinutes,
      DateTime confirmedAt,
      DateTime? preparingAt,
      DateTime? pickedUpAt,
      DateTime? deliveredAt,
      double? driverLatitude,
      double? driverLongitude});
}

/// @nodoc
class __$TrackingCopyWithImpl<$Res> implements _$TrackingCopyWith<$Res> {
  __$TrackingCopyWithImpl(this._self, this._then);

  final _Tracking _self;
  final $Res Function(_Tracking) _then;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? currentProgress = null,
    Object? driverName = null,
    Object? driverPhone = null,
    Object? globalEtaMinutes = null,
    Object? confirmedAt = null,
    Object? preparingAt = freezed,
    Object? pickedUpAt = freezed,
    Object? deliveredAt = freezed,
    Object? driverLatitude = freezed,
    Object? driverLongitude = freezed,
  }) {
    return _then(_Tracking(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      currentProgress: null == currentProgress
          ? _self.currentProgress
          : currentProgress // ignore: cast_nullable_to_non_nullable
              as TrackingProgress,
      driverName: null == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String,
      driverPhone: null == driverPhone
          ? _self.driverPhone
          : driverPhone // ignore: cast_nullable_to_non_nullable
              as String,
      globalEtaMinutes: null == globalEtaMinutes
          ? _self.globalEtaMinutes
          : globalEtaMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      confirmedAt: null == confirmedAt
          ? _self.confirmedAt
          : confirmedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      preparingAt: freezed == preparingAt
          ? _self.preparingAt
          : preparingAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pickedUpAt: freezed == pickedUpAt
          ? _self.pickedUpAt
          : pickedUpAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredAt: freezed == deliveredAt
          ? _self.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      driverLatitude: freezed == driverLatitude
          ? _self.driverLatitude
          : driverLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      driverLongitude: freezed == driverLongitude
          ? _self.driverLongitude
          : driverLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
