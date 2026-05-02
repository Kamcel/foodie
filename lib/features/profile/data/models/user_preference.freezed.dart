// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPreference {
// F -- Fields
  String get id;
  String get userId;
  DateTime get createdAt;
  DateTime get updatedAt;
  List<DietaryPreference> get dietaryPreferences;
  List<Allergy> get allergies;
  List<Cuisine> get cuisines;
  SpiceLevel get spicelevel;
  bool get whatsappUpdates;
  bool get orderUpdates;
  bool get dealsUpdates;

  /// Create a copy of UserPreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserPreferenceCopyWith<UserPreference> get copyWith =>
      _$UserPreferenceCopyWithImpl<UserPreference>(
          this as UserPreference, _$identity);

  /// Serializes this UserPreference to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPreference &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.dietaryPreferences, dietaryPreferences) &&
            const DeepCollectionEquality().equals(other.allergies, allergies) &&
            const DeepCollectionEquality().equals(other.cuisines, cuisines) &&
            (identical(other.spicelevel, spicelevel) ||
                other.spicelevel == spicelevel) &&
            (identical(other.whatsappUpdates, whatsappUpdates) ||
                other.whatsappUpdates == whatsappUpdates) &&
            (identical(other.orderUpdates, orderUpdates) ||
                other.orderUpdates == orderUpdates) &&
            (identical(other.dealsUpdates, dealsUpdates) ||
                other.dealsUpdates == dealsUpdates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(dietaryPreferences),
      const DeepCollectionEquality().hash(allergies),
      const DeepCollectionEquality().hash(cuisines),
      spicelevel,
      whatsappUpdates,
      orderUpdates,
      dealsUpdates);

  @override
  String toString() {
    return 'UserPreference(id: $id, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, dietaryPreferences: $dietaryPreferences, allergies: $allergies, cuisines: $cuisines, spicelevel: $spicelevel, whatsappUpdates: $whatsappUpdates, orderUpdates: $orderUpdates, dealsUpdates: $dealsUpdates)';
  }
}

/// @nodoc
abstract mixin class $UserPreferenceCopyWith<$Res> {
  factory $UserPreferenceCopyWith(
          UserPreference value, $Res Function(UserPreference) _then) =
      _$UserPreferenceCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      DateTime createdAt,
      DateTime updatedAt,
      List<DietaryPreference> dietaryPreferences,
      List<Allergy> allergies,
      List<Cuisine> cuisines,
      SpiceLevel spicelevel,
      bool whatsappUpdates,
      bool orderUpdates,
      bool dealsUpdates});
}

/// @nodoc
class _$UserPreferenceCopyWithImpl<$Res>
    implements $UserPreferenceCopyWith<$Res> {
  _$UserPreferenceCopyWithImpl(this._self, this._then);

  final UserPreference _self;
  final $Res Function(UserPreference) _then;

  /// Create a copy of UserPreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? dietaryPreferences = null,
    Object? allergies = null,
    Object? cuisines = null,
    Object? spicelevel = null,
    Object? whatsappUpdates = null,
    Object? orderUpdates = null,
    Object? dealsUpdates = null,
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
      dietaryPreferences: null == dietaryPreferences
          ? _self.dietaryPreferences
          : dietaryPreferences // ignore: cast_nullable_to_non_nullable
              as List<DietaryPreference>,
      allergies: null == allergies
          ? _self.allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<Allergy>,
      cuisines: null == cuisines
          ? _self.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<Cuisine>,
      spicelevel: null == spicelevel
          ? _self.spicelevel
          : spicelevel // ignore: cast_nullable_to_non_nullable
              as SpiceLevel,
      whatsappUpdates: null == whatsappUpdates
          ? _self.whatsappUpdates
          : whatsappUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      orderUpdates: null == orderUpdates
          ? _self.orderUpdates
          : orderUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      dealsUpdates: null == dealsUpdates
          ? _self.dealsUpdates
          : dealsUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserPreference].
extension UserPreferencePatterns on UserPreference {
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
    TResult Function(_UserPreference value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserPreference() when $default != null:
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
    TResult Function(_UserPreference value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserPreference():
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
    TResult? Function(_UserPreference value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserPreference() when $default != null:
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
            List<DietaryPreference> dietaryPreferences,
            List<Allergy> allergies,
            List<Cuisine> cuisines,
            SpiceLevel spicelevel,
            bool whatsappUpdates,
            bool orderUpdates,
            bool dealsUpdates)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserPreference() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.createdAt,
            _that.updatedAt,
            _that.dietaryPreferences,
            _that.allergies,
            _that.cuisines,
            _that.spicelevel,
            _that.whatsappUpdates,
            _that.orderUpdates,
            _that.dealsUpdates);
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
            List<DietaryPreference> dietaryPreferences,
            List<Allergy> allergies,
            List<Cuisine> cuisines,
            SpiceLevel spicelevel,
            bool whatsappUpdates,
            bool orderUpdates,
            bool dealsUpdates)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserPreference():
        return $default(
            _that.id,
            _that.userId,
            _that.createdAt,
            _that.updatedAt,
            _that.dietaryPreferences,
            _that.allergies,
            _that.cuisines,
            _that.spicelevel,
            _that.whatsappUpdates,
            _that.orderUpdates,
            _that.dealsUpdates);
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
            List<DietaryPreference> dietaryPreferences,
            List<Allergy> allergies,
            List<Cuisine> cuisines,
            SpiceLevel spicelevel,
            bool whatsappUpdates,
            bool orderUpdates,
            bool dealsUpdates)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserPreference() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.createdAt,
            _that.updatedAt,
            _that.dietaryPreferences,
            _that.allergies,
            _that.cuisines,
            _that.spicelevel,
            _that.whatsappUpdates,
            _that.orderUpdates,
            _that.dealsUpdates);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserPreference extends UserPreference {
  const _UserPreference(
      {required this.id,
      required this.userId,
      required this.createdAt,
      required this.updatedAt,
      final List<DietaryPreference> dietaryPreferences = const [],
      final List<Allergy> allergies = const [],
      final List<Cuisine> cuisines = const [],
      this.spicelevel = SpiceLevel.mild,
      this.whatsappUpdates = false,
      this.orderUpdates = true,
      this.dealsUpdates = false})
      : _dietaryPreferences = dietaryPreferences,
        _allergies = allergies,
        _cuisines = cuisines,
        super._();
  factory _UserPreference.fromJson(Map<String, dynamic> json) =>
      _$UserPreferenceFromJson(json);

// F -- Fields
  @override
  final String id;
  @override
  final String userId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<DietaryPreference> _dietaryPreferences;
  @override
  @JsonKey()
  List<DietaryPreference> get dietaryPreferences {
    if (_dietaryPreferences is EqualUnmodifiableListView)
      return _dietaryPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietaryPreferences);
  }

  final List<Allergy> _allergies;
  @override
  @JsonKey()
  List<Allergy> get allergies {
    if (_allergies is EqualUnmodifiableListView) return _allergies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergies);
  }

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
  final SpiceLevel spicelevel;
  @override
  @JsonKey()
  final bool whatsappUpdates;
  @override
  @JsonKey()
  final bool orderUpdates;
  @override
  @JsonKey()
  final bool dealsUpdates;

  /// Create a copy of UserPreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserPreferenceCopyWith<_UserPreference> get copyWith =>
      __$UserPreferenceCopyWithImpl<_UserPreference>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserPreferenceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserPreference &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._dietaryPreferences, _dietaryPreferences) &&
            const DeepCollectionEquality()
                .equals(other._allergies, _allergies) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            (identical(other.spicelevel, spicelevel) ||
                other.spicelevel == spicelevel) &&
            (identical(other.whatsappUpdates, whatsappUpdates) ||
                other.whatsappUpdates == whatsappUpdates) &&
            (identical(other.orderUpdates, orderUpdates) ||
                other.orderUpdates == orderUpdates) &&
            (identical(other.dealsUpdates, dealsUpdates) ||
                other.dealsUpdates == dealsUpdates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_dietaryPreferences),
      const DeepCollectionEquality().hash(_allergies),
      const DeepCollectionEquality().hash(_cuisines),
      spicelevel,
      whatsappUpdates,
      orderUpdates,
      dealsUpdates);

  @override
  String toString() {
    return 'UserPreference(id: $id, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, dietaryPreferences: $dietaryPreferences, allergies: $allergies, cuisines: $cuisines, spicelevel: $spicelevel, whatsappUpdates: $whatsappUpdates, orderUpdates: $orderUpdates, dealsUpdates: $dealsUpdates)';
  }
}

/// @nodoc
abstract mixin class _$UserPreferenceCopyWith<$Res>
    implements $UserPreferenceCopyWith<$Res> {
  factory _$UserPreferenceCopyWith(
          _UserPreference value, $Res Function(_UserPreference) _then) =
      __$UserPreferenceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      DateTime createdAt,
      DateTime updatedAt,
      List<DietaryPreference> dietaryPreferences,
      List<Allergy> allergies,
      List<Cuisine> cuisines,
      SpiceLevel spicelevel,
      bool whatsappUpdates,
      bool orderUpdates,
      bool dealsUpdates});
}

/// @nodoc
class __$UserPreferenceCopyWithImpl<$Res>
    implements _$UserPreferenceCopyWith<$Res> {
  __$UserPreferenceCopyWithImpl(this._self, this._then);

  final _UserPreference _self;
  final $Res Function(_UserPreference) _then;

  /// Create a copy of UserPreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? dietaryPreferences = null,
    Object? allergies = null,
    Object? cuisines = null,
    Object? spicelevel = null,
    Object? whatsappUpdates = null,
    Object? orderUpdates = null,
    Object? dealsUpdates = null,
  }) {
    return _then(_UserPreference(
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
      dietaryPreferences: null == dietaryPreferences
          ? _self._dietaryPreferences
          : dietaryPreferences // ignore: cast_nullable_to_non_nullable
              as List<DietaryPreference>,
      allergies: null == allergies
          ? _self._allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<Allergy>,
      cuisines: null == cuisines
          ? _self._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<Cuisine>,
      spicelevel: null == spicelevel
          ? _self.spicelevel
          : spicelevel // ignore: cast_nullable_to_non_nullable
              as SpiceLevel,
      whatsappUpdates: null == whatsappUpdates
          ? _self.whatsappUpdates
          : whatsappUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      orderUpdates: null == orderUpdates
          ? _self.orderUpdates
          : orderUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      dealsUpdates: null == dealsUpdates
          ? _self.dealsUpdates
          : dealsUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
