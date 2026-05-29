// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileStatsModel {
  int get totalOrdersCount;
  int get totalSpentInCents;
  int get loyaltyPoints;
  String get tierName;

  /// Create a copy of ProfileStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileStatsModelCopyWith<ProfileStatsModel> get copyWith =>
      _$ProfileStatsModelCopyWithImpl<ProfileStatsModel>(
          this as ProfileStatsModel, _$identity);

  /// Serializes this ProfileStatsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileStatsModel &&
            (identical(other.totalOrdersCount, totalOrdersCount) ||
                other.totalOrdersCount == totalOrdersCount) &&
            (identical(other.totalSpentInCents, totalSpentInCents) ||
                other.totalSpentInCents == totalSpentInCents) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                other.loyaltyPoints == loyaltyPoints) &&
            (identical(other.tierName, tierName) ||
                other.tierName == tierName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalOrdersCount,
      totalSpentInCents, loyaltyPoints, tierName);

  @override
  String toString() {
    return 'ProfileStatsModel(totalOrdersCount: $totalOrdersCount, totalSpentInCents: $totalSpentInCents, loyaltyPoints: $loyaltyPoints, tierName: $tierName)';
  }
}

/// @nodoc
abstract mixin class $ProfileStatsModelCopyWith<$Res> {
  factory $ProfileStatsModelCopyWith(
          ProfileStatsModel value, $Res Function(ProfileStatsModel) _then) =
      _$ProfileStatsModelCopyWithImpl;
  @useResult
  $Res call(
      {int totalOrdersCount,
      int totalSpentInCents,
      int loyaltyPoints,
      String tierName});
}

/// @nodoc
class _$ProfileStatsModelCopyWithImpl<$Res>
    implements $ProfileStatsModelCopyWith<$Res> {
  _$ProfileStatsModelCopyWithImpl(this._self, this._then);

  final ProfileStatsModel _self;
  final $Res Function(ProfileStatsModel) _then;

  /// Create a copy of ProfileStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrdersCount = null,
    Object? totalSpentInCents = null,
    Object? loyaltyPoints = null,
    Object? tierName = null,
  }) {
    return _then(_self.copyWith(
      totalOrdersCount: null == totalOrdersCount
          ? _self.totalOrdersCount
          : totalOrdersCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalSpentInCents: null == totalSpentInCents
          ? _self.totalSpentInCents
          : totalSpentInCents // ignore: cast_nullable_to_non_nullable
              as int,
      loyaltyPoints: null == loyaltyPoints
          ? _self.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      tierName: null == tierName
          ? _self.tierName
          : tierName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProfileStatsModel].
extension ProfileStatsModelPatterns on ProfileStatsModel {
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
    TResult Function(_ProfileStatsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileStatsModel() when $default != null:
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
    TResult Function(_ProfileStatsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileStatsModel():
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
    TResult? Function(_ProfileStatsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileStatsModel() when $default != null:
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
    TResult Function(int totalOrdersCount, int totalSpentInCents,
            int loyaltyPoints, String tierName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileStatsModel() when $default != null:
        return $default(_that.totalOrdersCount, _that.totalSpentInCents,
            _that.loyaltyPoints, _that.tierName);
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
    TResult Function(int totalOrdersCount, int totalSpentInCents,
            int loyaltyPoints, String tierName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileStatsModel():
        return $default(_that.totalOrdersCount, _that.totalSpentInCents,
            _that.loyaltyPoints, _that.tierName);
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
    TResult? Function(int totalOrdersCount, int totalSpentInCents,
            int loyaltyPoints, String tierName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileStatsModel() when $default != null:
        return $default(_that.totalOrdersCount, _that.totalSpentInCents,
            _that.loyaltyPoints, _that.tierName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProfileStatsModel implements ProfileStatsModel {
  const _ProfileStatsModel(
      {required this.totalOrdersCount,
      required this.totalSpentInCents,
      required this.loyaltyPoints,
      required this.tierName});
  factory _ProfileStatsModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileStatsModelFromJson(json);

  @override
  final int totalOrdersCount;
  @override
  final int totalSpentInCents;
  @override
  final int loyaltyPoints;
  @override
  final String tierName;

  /// Create a copy of ProfileStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileStatsModelCopyWith<_ProfileStatsModel> get copyWith =>
      __$ProfileStatsModelCopyWithImpl<_ProfileStatsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileStatsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileStatsModel &&
            (identical(other.totalOrdersCount, totalOrdersCount) ||
                other.totalOrdersCount == totalOrdersCount) &&
            (identical(other.totalSpentInCents, totalSpentInCents) ||
                other.totalSpentInCents == totalSpentInCents) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                other.loyaltyPoints == loyaltyPoints) &&
            (identical(other.tierName, tierName) ||
                other.tierName == tierName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalOrdersCount,
      totalSpentInCents, loyaltyPoints, tierName);

  @override
  String toString() {
    return 'ProfileStatsModel(totalOrdersCount: $totalOrdersCount, totalSpentInCents: $totalSpentInCents, loyaltyPoints: $loyaltyPoints, tierName: $tierName)';
  }
}

/// @nodoc
abstract mixin class _$ProfileStatsModelCopyWith<$Res>
    implements $ProfileStatsModelCopyWith<$Res> {
  factory _$ProfileStatsModelCopyWith(
          _ProfileStatsModel value, $Res Function(_ProfileStatsModel) _then) =
      __$ProfileStatsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int totalOrdersCount,
      int totalSpentInCents,
      int loyaltyPoints,
      String tierName});
}

/// @nodoc
class __$ProfileStatsModelCopyWithImpl<$Res>
    implements _$ProfileStatsModelCopyWith<$Res> {
  __$ProfileStatsModelCopyWithImpl(this._self, this._then);

  final _ProfileStatsModel _self;
  final $Res Function(_ProfileStatsModel) _then;

  /// Create a copy of ProfileStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalOrdersCount = null,
    Object? totalSpentInCents = null,
    Object? loyaltyPoints = null,
    Object? tierName = null,
  }) {
    return _then(_ProfileStatsModel(
      totalOrdersCount: null == totalOrdersCount
          ? _self.totalOrdersCount
          : totalOrdersCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalSpentInCents: null == totalSpentInCents
          ? _self.totalSpentInCents
          : totalSpentInCents // ignore: cast_nullable_to_non_nullable
              as int,
      loyaltyPoints: null == loyaltyPoints
          ? _self.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      tierName: null == tierName
          ? _self.tierName
          : tierName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
