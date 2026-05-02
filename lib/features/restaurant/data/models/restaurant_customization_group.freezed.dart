// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_customization_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantCustomizationGroup {
// F -- Fields
  String get id;
  String get name;
  String? get description;
  CustomizationType get type;
  bool get isRequired;
  int get minSelections;
  int get maxSelections;
  List<RestaurantCustomizationOption> get options;

  /// Create a copy of RestaurantCustomizationGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestaurantCustomizationGroupCopyWith<RestaurantCustomizationGroup>
      get copyWith => _$RestaurantCustomizationGroupCopyWithImpl<
              RestaurantCustomizationGroup>(
          this as RestaurantCustomizationGroup, _$identity);

  /// Serializes this RestaurantCustomizationGroup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestaurantCustomizationGroup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.minSelections, minSelections) ||
                other.minSelections == minSelections) &&
            (identical(other.maxSelections, maxSelections) ||
                other.maxSelections == maxSelections) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      type,
      isRequired,
      minSelections,
      maxSelections,
      const DeepCollectionEquality().hash(options));

  @override
  String toString() {
    return 'RestaurantCustomizationGroup(id: $id, name: $name, description: $description, type: $type, isRequired: $isRequired, minSelections: $minSelections, maxSelections: $maxSelections, options: $options)';
  }
}

/// @nodoc
abstract mixin class $RestaurantCustomizationGroupCopyWith<$Res> {
  factory $RestaurantCustomizationGroupCopyWith(
          RestaurantCustomizationGroup value,
          $Res Function(RestaurantCustomizationGroup) _then) =
      _$RestaurantCustomizationGroupCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      CustomizationType type,
      bool isRequired,
      int minSelections,
      int maxSelections,
      List<RestaurantCustomizationOption> options});
}

/// @nodoc
class _$RestaurantCustomizationGroupCopyWithImpl<$Res>
    implements $RestaurantCustomizationGroupCopyWith<$Res> {
  _$RestaurantCustomizationGroupCopyWithImpl(this._self, this._then);

  final RestaurantCustomizationGroup _self;
  final $Res Function(RestaurantCustomizationGroup) _then;

  /// Create a copy of RestaurantCustomizationGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? type = null,
    Object? isRequired = null,
    Object? minSelections = null,
    Object? maxSelections = null,
    Object? options = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as CustomizationType,
      isRequired: null == isRequired
          ? _self.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      minSelections: null == minSelections
          ? _self.minSelections
          : minSelections // ignore: cast_nullable_to_non_nullable
              as int,
      maxSelections: null == maxSelections
          ? _self.maxSelections
          : maxSelections // ignore: cast_nullable_to_non_nullable
              as int,
      options: null == options
          ? _self.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<RestaurantCustomizationOption>,
    ));
  }
}

/// Adds pattern-matching-related methods to [RestaurantCustomizationGroup].
extension RestaurantCustomizationGroupPatterns on RestaurantCustomizationGroup {
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
    TResult Function(_RestaurantCustomizationGroup value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantCustomizationGroup() when $default != null:
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
    TResult Function(_RestaurantCustomizationGroup value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantCustomizationGroup():
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
    TResult? Function(_RestaurantCustomizationGroup value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantCustomizationGroup() when $default != null:
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
            String name,
            String? description,
            CustomizationType type,
            bool isRequired,
            int minSelections,
            int maxSelections,
            List<RestaurantCustomizationOption> options)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantCustomizationGroup() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.type,
            _that.isRequired,
            _that.minSelections,
            _that.maxSelections,
            _that.options);
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
            String name,
            String? description,
            CustomizationType type,
            bool isRequired,
            int minSelections,
            int maxSelections,
            List<RestaurantCustomizationOption> options)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantCustomizationGroup():
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.type,
            _that.isRequired,
            _that.minSelections,
            _that.maxSelections,
            _that.options);
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
            String name,
            String? description,
            CustomizationType type,
            bool isRequired,
            int minSelections,
            int maxSelections,
            List<RestaurantCustomizationOption> options)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantCustomizationGroup() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.type,
            _that.isRequired,
            _that.minSelections,
            _that.maxSelections,
            _that.options);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RestaurantCustomizationGroup extends RestaurantCustomizationGroup {
  const _RestaurantCustomizationGroup(
      {required this.id,
      required this.name,
      this.description,
      required this.type,
      this.isRequired = false,
      this.minSelections = 1,
      this.maxSelections = 1,
      final List<RestaurantCustomizationOption> options = const []})
      : _options = options,
        super._();
  factory _RestaurantCustomizationGroup.fromJson(Map<String, dynamic> json) =>
      _$RestaurantCustomizationGroupFromJson(json);

// F -- Fields
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final CustomizationType type;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey()
  final int minSelections;
  @override
  @JsonKey()
  final int maxSelections;
  final List<RestaurantCustomizationOption> _options;
  @override
  @JsonKey()
  List<RestaurantCustomizationOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  /// Create a copy of RestaurantCustomizationGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RestaurantCustomizationGroupCopyWith<_RestaurantCustomizationGroup>
      get copyWith => __$RestaurantCustomizationGroupCopyWithImpl<
          _RestaurantCustomizationGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RestaurantCustomizationGroupToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestaurantCustomizationGroup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.minSelections, minSelections) ||
                other.minSelections == minSelections) &&
            (identical(other.maxSelections, maxSelections) ||
                other.maxSelections == maxSelections) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      type,
      isRequired,
      minSelections,
      maxSelections,
      const DeepCollectionEquality().hash(_options));

  @override
  String toString() {
    return 'RestaurantCustomizationGroup(id: $id, name: $name, description: $description, type: $type, isRequired: $isRequired, minSelections: $minSelections, maxSelections: $maxSelections, options: $options)';
  }
}

/// @nodoc
abstract mixin class _$RestaurantCustomizationGroupCopyWith<$Res>
    implements $RestaurantCustomizationGroupCopyWith<$Res> {
  factory _$RestaurantCustomizationGroupCopyWith(
          _RestaurantCustomizationGroup value,
          $Res Function(_RestaurantCustomizationGroup) _then) =
      __$RestaurantCustomizationGroupCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      CustomizationType type,
      bool isRequired,
      int minSelections,
      int maxSelections,
      List<RestaurantCustomizationOption> options});
}

/// @nodoc
class __$RestaurantCustomizationGroupCopyWithImpl<$Res>
    implements _$RestaurantCustomizationGroupCopyWith<$Res> {
  __$RestaurantCustomizationGroupCopyWithImpl(this._self, this._then);

  final _RestaurantCustomizationGroup _self;
  final $Res Function(_RestaurantCustomizationGroup) _then;

  /// Create a copy of RestaurantCustomizationGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? type = null,
    Object? isRequired = null,
    Object? minSelections = null,
    Object? maxSelections = null,
    Object? options = null,
  }) {
    return _then(_RestaurantCustomizationGroup(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as CustomizationType,
      isRequired: null == isRequired
          ? _self.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      minSelections: null == minSelections
          ? _self.minSelections
          : minSelections // ignore: cast_nullable_to_non_nullable
              as int,
      maxSelections: null == maxSelections
          ? _self.maxSelections
          : maxSelections // ignore: cast_nullable_to_non_nullable
              as int,
      options: null == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<RestaurantCustomizationOption>,
    ));
  }
}

// dart format on
