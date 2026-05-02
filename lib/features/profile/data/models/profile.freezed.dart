// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Profile {
// F -- Fields
  String get id;
  String get userId;
  DateTime get createdAt;
  DateTime get updatedAt;
  String get homeCountry;
  String? get homeState;
  String? get homeCity;
  String? get homeStreet;
  String? get workCompany;
  String? get workCity;
  String? get workAddress;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<Profile> get copyWith =>
      _$ProfileCopyWithImpl<Profile>(this as Profile, _$identity);

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Profile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.homeCountry, homeCountry) ||
                other.homeCountry == homeCountry) &&
            (identical(other.homeState, homeState) ||
                other.homeState == homeState) &&
            (identical(other.homeCity, homeCity) ||
                other.homeCity == homeCity) &&
            (identical(other.homeStreet, homeStreet) ||
                other.homeStreet == homeStreet) &&
            (identical(other.workCompany, workCompany) ||
                other.workCompany == workCompany) &&
            (identical(other.workCity, workCity) ||
                other.workCity == workCity) &&
            (identical(other.workAddress, workAddress) ||
                other.workAddress == workAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      createdAt,
      updatedAt,
      homeCountry,
      homeState,
      homeCity,
      homeStreet,
      workCompany,
      workCity,
      workAddress);

  @override
  String toString() {
    return 'Profile(id: $id, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, homeCountry: $homeCountry, homeState: $homeState, homeCity: $homeCity, homeStreet: $homeStreet, workCompany: $workCompany, workCity: $workCity, workAddress: $workAddress)';
  }
}

/// @nodoc
abstract mixin class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) _then) =
      _$ProfileCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      DateTime createdAt,
      DateTime updatedAt,
      String homeCountry,
      String? homeState,
      String? homeCity,
      String? homeStreet,
      String? workCompany,
      String? workCity,
      String? workAddress});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._self, this._then);

  final Profile _self;
  final $Res Function(Profile) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? homeCountry = null,
    Object? homeState = freezed,
    Object? homeCity = freezed,
    Object? homeStreet = freezed,
    Object? workCompany = freezed,
    Object? workCity = freezed,
    Object? workAddress = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      homeCountry: null == homeCountry
          ? _self.homeCountry
          : homeCountry // ignore: cast_nullable_to_non_nullable
              as String,
      homeState: freezed == homeState
          ? _self.homeState
          : homeState // ignore: cast_nullable_to_non_nullable
              as String?,
      homeCity: freezed == homeCity
          ? _self.homeCity
          : homeCity // ignore: cast_nullable_to_non_nullable
              as String?,
      homeStreet: freezed == homeStreet
          ? _self.homeStreet
          : homeStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      workCompany: freezed == workCompany
          ? _self.workCompany
          : workCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      workCity: freezed == workCity
          ? _self.workCity
          : workCity // ignore: cast_nullable_to_non_nullable
              as String?,
      workAddress: freezed == workAddress
          ? _self.workAddress
          : workAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Profile].
extension ProfilePatterns on Profile {
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
    TResult Function(_Profile value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
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
    TResult Function(_Profile value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile():
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
    TResult? Function(_Profile value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
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
            String id,
            String userId,
            DateTime createdAt,
            DateTime updatedAt,
            String homeCountry,
            String? homeState,
            String? homeCity,
            String? homeStreet,
            String? workCompany,
            String? workCity,
            String? workAddress)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.createdAt,
            _that.updatedAt,
            _that.homeCountry,
            _that.homeState,
            _that.homeCity,
            _that.homeStreet,
            _that.workCompany,
            _that.workCity,
            _that.workAddress);
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
            String id,
            String userId,
            DateTime createdAt,
            DateTime updatedAt,
            String homeCountry,
            String? homeState,
            String? homeCity,
            String? homeStreet,
            String? workCompany,
            String? workCity,
            String? workAddress)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile():
        return $default(
            _that.id,
            _that.userId,
            _that.createdAt,
            _that.updatedAt,
            _that.homeCountry,
            _that.homeState,
            _that.homeCity,
            _that.homeStreet,
            _that.workCompany,
            _that.workCity,
            _that.workAddress);
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
            String id,
            String userId,
            DateTime createdAt,
            DateTime updatedAt,
            String homeCountry,
            String? homeState,
            String? homeCity,
            String? homeStreet,
            String? workCompany,
            String? workCity,
            String? workAddress)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.createdAt,
            _that.updatedAt,
            _that.homeCountry,
            _that.homeState,
            _that.homeCity,
            _that.homeStreet,
            _that.workCompany,
            _that.workCity,
            _that.workAddress);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Profile extends Profile {
  const _Profile(
      {required this.id,
      required this.userId,
      required this.createdAt,
      required this.updatedAt,
      required this.homeCountry,
      this.homeState,
      this.homeCity,
      this.homeStreet,
      this.workCompany,
      this.workCity,
      this.workAddress})
      : super._();
  factory _Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

// F -- Fields
  @override
  final String id;
  @override
  final String userId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String homeCountry;
  @override
  final String? homeState;
  @override
  final String? homeCity;
  @override
  final String? homeStreet;
  @override
  final String? workCompany;
  @override
  final String? workCity;
  @override
  final String? workAddress;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Profile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.homeCountry, homeCountry) ||
                other.homeCountry == homeCountry) &&
            (identical(other.homeState, homeState) ||
                other.homeState == homeState) &&
            (identical(other.homeCity, homeCity) ||
                other.homeCity == homeCity) &&
            (identical(other.homeStreet, homeStreet) ||
                other.homeStreet == homeStreet) &&
            (identical(other.workCompany, workCompany) ||
                other.workCompany == workCompany) &&
            (identical(other.workCity, workCity) ||
                other.workCity == workCity) &&
            (identical(other.workAddress, workAddress) ||
                other.workAddress == workAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      createdAt,
      updatedAt,
      homeCountry,
      homeState,
      homeCity,
      homeStreet,
      workCompany,
      workCity,
      workAddress);

  @override
  String toString() {
    return 'Profile(id: $id, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, homeCountry: $homeCountry, homeState: $homeState, homeCity: $homeCity, homeStreet: $homeStreet, workCompany: $workCompany, workCity: $workCity, workAddress: $workAddress)';
  }
}

/// @nodoc
abstract mixin class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) _then) =
      __$ProfileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      DateTime createdAt,
      DateTime updatedAt,
      String homeCountry,
      String? homeState,
      String? homeCity,
      String? homeStreet,
      String? workCompany,
      String? workCity,
      String? workAddress});
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(this._self, this._then);

  final _Profile _self;
  final $Res Function(_Profile) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? homeCountry = null,
    Object? homeState = freezed,
    Object? homeCity = freezed,
    Object? homeStreet = freezed,
    Object? workCompany = freezed,
    Object? workCity = freezed,
    Object? workAddress = freezed,
  }) {
    return _then(_Profile(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      homeCountry: null == homeCountry
          ? _self.homeCountry
          : homeCountry // ignore: cast_nullable_to_non_nullable
              as String,
      homeState: freezed == homeState
          ? _self.homeState
          : homeState // ignore: cast_nullable_to_non_nullable
              as String?,
      homeCity: freezed == homeCity
          ? _self.homeCity
          : homeCity // ignore: cast_nullable_to_non_nullable
              as String?,
      homeStreet: freezed == homeStreet
          ? _self.homeStreet
          : homeStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      workCompany: freezed == workCompany
          ? _self.workCompany
          : workCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      workCity: freezed == workCity
          ? _self.workCity
          : workCity // ignore: cast_nullable_to_non_nullable
              as String?,
      workAddress: freezed == workAddress
          ? _self.workAddress
          : workAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
