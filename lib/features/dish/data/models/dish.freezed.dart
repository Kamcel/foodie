// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomizationOption {
  String get id;
  String get name;
  double get additionalPrice;
  bool get isDefault;
  bool get isAvailable;
  String? get imageUrl;

  /// Create a copy of CustomizationOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomizationOptionCopyWith<CustomizationOption> get copyWith =>
      _$CustomizationOptionCopyWithImpl<CustomizationOption>(
          this as CustomizationOption, _$identity);

  /// Serializes this CustomizationOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomizationOption &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.additionalPrice, additionalPrice) ||
                other.additionalPrice == additionalPrice) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, additionalPrice, isDefault, isAvailable, imageUrl);

  @override
  String toString() {
    return 'CustomizationOption(id: $id, name: $name, additionalPrice: $additionalPrice, isDefault: $isDefault, isAvailable: $isAvailable, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $CustomizationOptionCopyWith<$Res> {
  factory $CustomizationOptionCopyWith(
          CustomizationOption value, $Res Function(CustomizationOption) _then) =
      _$CustomizationOptionCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      double additionalPrice,
      bool isDefault,
      bool isAvailable,
      String? imageUrl});
}

/// @nodoc
class _$CustomizationOptionCopyWithImpl<$Res>
    implements $CustomizationOptionCopyWith<$Res> {
  _$CustomizationOptionCopyWithImpl(this._self, this._then);

  final CustomizationOption _self;
  final $Res Function(CustomizationOption) _then;

  /// Create a copy of CustomizationOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalPrice = null,
    Object? isDefault = null,
    Object? isAvailable = null,
    Object? imageUrl = freezed,
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
      additionalPrice: null == additionalPrice
          ? _self.additionalPrice
          : additionalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailable: null == isAvailable
          ? _self.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CustomizationOption].
extension CustomizationOptionPatterns on CustomizationOption {
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
    TResult Function(_CustomizationOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomizationOption() when $default != null:
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
    TResult Function(_CustomizationOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomizationOption():
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
    TResult? Function(_CustomizationOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomizationOption() when $default != null:
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
    TResult Function(String id, String name, double additionalPrice,
            bool isDefault, bool isAvailable, String? imageUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomizationOption() when $default != null:
        return $default(_that.id, _that.name, _that.additionalPrice,
            _that.isDefault, _that.isAvailable, _that.imageUrl);
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
    TResult Function(String id, String name, double additionalPrice,
            bool isDefault, bool isAvailable, String? imageUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomizationOption():
        return $default(_that.id, _that.name, _that.additionalPrice,
            _that.isDefault, _that.isAvailable, _that.imageUrl);
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
    TResult? Function(String id, String name, double additionalPrice,
            bool isDefault, bool isAvailable, String? imageUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomizationOption() when $default != null:
        return $default(_that.id, _that.name, _that.additionalPrice,
            _that.isDefault, _that.isAvailable, _that.imageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CustomizationOption implements CustomizationOption {
  const _CustomizationOption(
      {required this.id,
      required this.name,
      this.additionalPrice = 0.0,
      this.isDefault = false,
      this.isAvailable = true,
      this.imageUrl});
  factory _CustomizationOption.fromJson(Map<String, dynamic> json) =>
      _$CustomizationOptionFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final double additionalPrice;
  @override
  @JsonKey()
  final bool isDefault;
  @override
  @JsonKey()
  final bool isAvailable;
  @override
  final String? imageUrl;

  /// Create a copy of CustomizationOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomizationOptionCopyWith<_CustomizationOption> get copyWith =>
      __$CustomizationOptionCopyWithImpl<_CustomizationOption>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomizationOptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomizationOption &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.additionalPrice, additionalPrice) ||
                other.additionalPrice == additionalPrice) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, additionalPrice, isDefault, isAvailable, imageUrl);

  @override
  String toString() {
    return 'CustomizationOption(id: $id, name: $name, additionalPrice: $additionalPrice, isDefault: $isDefault, isAvailable: $isAvailable, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$CustomizationOptionCopyWith<$Res>
    implements $CustomizationOptionCopyWith<$Res> {
  factory _$CustomizationOptionCopyWith(_CustomizationOption value,
          $Res Function(_CustomizationOption) _then) =
      __$CustomizationOptionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      double additionalPrice,
      bool isDefault,
      bool isAvailable,
      String? imageUrl});
}

/// @nodoc
class __$CustomizationOptionCopyWithImpl<$Res>
    implements _$CustomizationOptionCopyWith<$Res> {
  __$CustomizationOptionCopyWithImpl(this._self, this._then);

  final _CustomizationOption _self;
  final $Res Function(_CustomizationOption) _then;

  /// Create a copy of CustomizationOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalPrice = null,
    Object? isDefault = null,
    Object? isAvailable = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_CustomizationOption(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      additionalPrice: null == additionalPrice
          ? _self.additionalPrice
          : additionalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailable: null == isAvailable
          ? _self.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CustomizationGroup {
  String get id;
  String get name;
  String? get description;
  CustomizationType get type;
  bool get isRequired;
  int get minSelections;
  int get maxSelections;
  List<CustomizationOption> get options;

  /// Create a copy of CustomizationGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomizationGroupCopyWith<CustomizationGroup> get copyWith =>
      _$CustomizationGroupCopyWithImpl<CustomizationGroup>(
          this as CustomizationGroup, _$identity);

  /// Serializes this CustomizationGroup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomizationGroup &&
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
    return 'CustomizationGroup(id: $id, name: $name, description: $description, type: $type, isRequired: $isRequired, minSelections: $minSelections, maxSelections: $maxSelections, options: $options)';
  }
}

/// @nodoc
abstract mixin class $CustomizationGroupCopyWith<$Res> {
  factory $CustomizationGroupCopyWith(
          CustomizationGroup value, $Res Function(CustomizationGroup) _then) =
      _$CustomizationGroupCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      CustomizationType type,
      bool isRequired,
      int minSelections,
      int maxSelections,
      List<CustomizationOption> options});
}

/// @nodoc
class _$CustomizationGroupCopyWithImpl<$Res>
    implements $CustomizationGroupCopyWith<$Res> {
  _$CustomizationGroupCopyWithImpl(this._self, this._then);

  final CustomizationGroup _self;
  final $Res Function(CustomizationGroup) _then;

  /// Create a copy of CustomizationGroup
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
              as List<CustomizationOption>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CustomizationGroup].
extension CustomizationGroupPatterns on CustomizationGroup {
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
    TResult Function(_CustomizationGroup value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomizationGroup() when $default != null:
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
    TResult Function(_CustomizationGroup value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomizationGroup():
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
    TResult? Function(_CustomizationGroup value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomizationGroup() when $default != null:
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
            List<CustomizationOption> options)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomizationGroup() when $default != null:
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
            List<CustomizationOption> options)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomizationGroup():
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
            List<CustomizationOption> options)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomizationGroup() when $default != null:
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
class _CustomizationGroup extends CustomizationGroup {
  const _CustomizationGroup(
      {required this.id,
      required this.name,
      this.description,
      this.type = CustomizationType.multiSelect,
      this.isRequired = false,
      this.minSelections = 0,
      this.maxSelections = 1,
      final List<CustomizationOption> options = const []})
      : _options = options,
        super._();
  factory _CustomizationGroup.fromJson(Map<String, dynamic> json) =>
      _$CustomizationGroupFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
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
  final List<CustomizationOption> _options;
  @override
  @JsonKey()
  List<CustomizationOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  /// Create a copy of CustomizationGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomizationGroupCopyWith<_CustomizationGroup> get copyWith =>
      __$CustomizationGroupCopyWithImpl<_CustomizationGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomizationGroupToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomizationGroup &&
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
    return 'CustomizationGroup(id: $id, name: $name, description: $description, type: $type, isRequired: $isRequired, minSelections: $minSelections, maxSelections: $maxSelections, options: $options)';
  }
}

/// @nodoc
abstract mixin class _$CustomizationGroupCopyWith<$Res>
    implements $CustomizationGroupCopyWith<$Res> {
  factory _$CustomizationGroupCopyWith(
          _CustomizationGroup value, $Res Function(_CustomizationGroup) _then) =
      __$CustomizationGroupCopyWithImpl;
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
      List<CustomizationOption> options});
}

/// @nodoc
class __$CustomizationGroupCopyWithImpl<$Res>
    implements _$CustomizationGroupCopyWith<$Res> {
  __$CustomizationGroupCopyWithImpl(this._self, this._then);

  final _CustomizationGroup _self;
  final $Res Function(_CustomizationGroup) _then;

  /// Create a copy of CustomizationGroup
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
    return _then(_CustomizationGroup(
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
              as List<CustomizationOption>,
    ));
  }
}

/// @nodoc
mixin _$Dish {
  String get id;
  String get restaurantId;
  String get name;
  String get description;
  double get basePrice;
  double? get originalPrice;
  List<String> get images;
  String? get videoUrl; // Classification
  List<DishCategory> get categories;
  List<DishDietaryTag> get dietaryTags;
  List<Allergen> get allergens;
  DishSpiceLevel get spiceLevel;
  DishStatus get status;
  int? get calories; // Customizations — each dish has its own unique groups
  List<CustomizationGroup> get customizations; // Availability
  bool get isAvailable;
  bool get isSoldOut;
  bool get isPopular;
  bool get isNew;
  bool get isBestseller;
  bool get isChefSpecial;
  int? get dailyLimit;
  PrepTime get prepTime; // Suggested pairings
  List<String> get suggestedPairingIds; // Metadata
  DateTime get createdAt;
  DateTime get updatedAt;
  bool get isActive;

  /// Create a copy of Dish
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DishCopyWith<Dish> get copyWith =>
      _$DishCopyWithImpl<Dish>(this as Dish, _$identity);

  /// Serializes this Dish to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Dish &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.dietaryTags, dietaryTags) &&
            const DeepCollectionEquality().equals(other.allergens, allergens) &&
            (identical(other.spiceLevel, spiceLevel) ||
                other.spiceLevel == spiceLevel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            const DeepCollectionEquality()
                .equals(other.customizations, customizations) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.isSoldOut, isSoldOut) ||
                other.isSoldOut == isSoldOut) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isBestseller, isBestseller) ||
                other.isBestseller == isBestseller) &&
            (identical(other.isChefSpecial, isChefSpecial) ||
                other.isChefSpecial == isChefSpecial) &&
            (identical(other.dailyLimit, dailyLimit) ||
                other.dailyLimit == dailyLimit) &&
            (identical(other.prepTime, prepTime) ||
                other.prepTime == prepTime) &&
            const DeepCollectionEquality()
                .equals(other.suggestedPairingIds, suggestedPairingIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        restaurantId,
        name,
        description,
        basePrice,
        originalPrice,
        const DeepCollectionEquality().hash(images),
        videoUrl,
        const DeepCollectionEquality().hash(categories),
        const DeepCollectionEquality().hash(dietaryTags),
        const DeepCollectionEquality().hash(allergens),
        spiceLevel,
        status,
        calories,
        const DeepCollectionEquality().hash(customizations),
        isAvailable,
        isSoldOut,
        isPopular,
        isNew,
        isBestseller,
        isChefSpecial,
        dailyLimit,
        prepTime,
        const DeepCollectionEquality().hash(suggestedPairingIds),
        createdAt,
        updatedAt,
        isActive
      ]);

  @override
  String toString() {
    return 'Dish(id: $id, restaurantId: $restaurantId, name: $name, description: $description, basePrice: $basePrice, originalPrice: $originalPrice, images: $images, videoUrl: $videoUrl, categories: $categories, dietaryTags: $dietaryTags, allergens: $allergens, spiceLevel: $spiceLevel, status: $status, calories: $calories, customizations: $customizations, isAvailable: $isAvailable, isSoldOut: $isSoldOut, isPopular: $isPopular, isNew: $isNew, isBestseller: $isBestseller, isChefSpecial: $isChefSpecial, dailyLimit: $dailyLimit, prepTime: $prepTime, suggestedPairingIds: $suggestedPairingIds, createdAt: $createdAt, updatedAt: $updatedAt, isActive: $isActive)';
  }
}

/// @nodoc
abstract mixin class $DishCopyWith<$Res> {
  factory $DishCopyWith(Dish value, $Res Function(Dish) _then) =
      _$DishCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String restaurantId,
      String name,
      String description,
      double basePrice,
      double? originalPrice,
      List<String> images,
      String? videoUrl,
      List<DishCategory> categories,
      List<DishDietaryTag> dietaryTags,
      List<Allergen> allergens,
      DishSpiceLevel spiceLevel,
      DishStatus status,
      int? calories,
      List<CustomizationGroup> customizations,
      bool isAvailable,
      bool isSoldOut,
      bool isPopular,
      bool isNew,
      bool isBestseller,
      bool isChefSpecial,
      int? dailyLimit,
      PrepTime prepTime,
      List<String> suggestedPairingIds,
      DateTime createdAt,
      DateTime updatedAt,
      bool isActive});
}

/// @nodoc
class _$DishCopyWithImpl<$Res> implements $DishCopyWith<$Res> {
  _$DishCopyWithImpl(this._self, this._then);

  final Dish _self;
  final $Res Function(Dish) _then;

  /// Create a copy of Dish
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantId = null,
    Object? name = null,
    Object? description = null,
    Object? basePrice = null,
    Object? originalPrice = freezed,
    Object? images = null,
    Object? videoUrl = freezed,
    Object? categories = null,
    Object? dietaryTags = null,
    Object? allergens = null,
    Object? spiceLevel = null,
    Object? status = null,
    Object? calories = freezed,
    Object? customizations = null,
    Object? isAvailable = null,
    Object? isSoldOut = null,
    Object? isPopular = null,
    Object? isNew = null,
    Object? isBestseller = null,
    Object? isChefSpecial = null,
    Object? dailyLimit = freezed,
    Object? prepTime = null,
    Object? suggestedPairingIds = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isActive = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      basePrice: null == basePrice
          ? _self.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double,
      originalPrice: freezed == originalPrice
          ? _self.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrl: freezed == videoUrl
          ? _self.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<DishCategory>,
      dietaryTags: null == dietaryTags
          ? _self.dietaryTags
          : dietaryTags // ignore: cast_nullable_to_non_nullable
              as List<DishDietaryTag>,
      allergens: null == allergens
          ? _self.allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<Allergen>,
      spiceLevel: null == spiceLevel
          ? _self.spiceLevel
          : spiceLevel // ignore: cast_nullable_to_non_nullable
              as DishSpiceLevel,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DishStatus,
      calories: freezed == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
      customizations: null == customizations
          ? _self.customizations
          : customizations // ignore: cast_nullable_to_non_nullable
              as List<CustomizationGroup>,
      isAvailable: null == isAvailable
          ? _self.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isSoldOut: null == isSoldOut
          ? _self.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isPopular: null == isPopular
          ? _self.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      isNew: null == isNew
          ? _self.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      isBestseller: null == isBestseller
          ? _self.isBestseller
          : isBestseller // ignore: cast_nullable_to_non_nullable
              as bool,
      isChefSpecial: null == isChefSpecial
          ? _self.isChefSpecial
          : isChefSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
      dailyLimit: freezed == dailyLimit
          ? _self.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      prepTime: null == prepTime
          ? _self.prepTime
          : prepTime // ignore: cast_nullable_to_non_nullable
              as PrepTime,
      suggestedPairingIds: null == suggestedPairingIds
          ? _self.suggestedPairingIds
          : suggestedPairingIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [Dish].
extension DishPatterns on Dish {
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
    TResult Function(_Dish value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Dish() when $default != null:
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
    TResult Function(_Dish value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dish():
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
    TResult? Function(_Dish value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dish() when $default != null:
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
            String restaurantId,
            String name,
            String description,
            double basePrice,
            double? originalPrice,
            List<String> images,
            String? videoUrl,
            List<DishCategory> categories,
            List<DishDietaryTag> dietaryTags,
            List<Allergen> allergens,
            DishSpiceLevel spiceLevel,
            DishStatus status,
            int? calories,
            List<CustomizationGroup> customizations,
            bool isAvailable,
            bool isSoldOut,
            bool isPopular,
            bool isNew,
            bool isBestseller,
            bool isChefSpecial,
            int? dailyLimit,
            PrepTime prepTime,
            List<String> suggestedPairingIds,
            DateTime createdAt,
            DateTime updatedAt,
            bool isActive)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Dish() when $default != null:
        return $default(
            _that.id,
            _that.restaurantId,
            _that.name,
            _that.description,
            _that.basePrice,
            _that.originalPrice,
            _that.images,
            _that.videoUrl,
            _that.categories,
            _that.dietaryTags,
            _that.allergens,
            _that.spiceLevel,
            _that.status,
            _that.calories,
            _that.customizations,
            _that.isAvailable,
            _that.isSoldOut,
            _that.isPopular,
            _that.isNew,
            _that.isBestseller,
            _that.isChefSpecial,
            _that.dailyLimit,
            _that.prepTime,
            _that.suggestedPairingIds,
            _that.createdAt,
            _that.updatedAt,
            _that.isActive);
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
            String restaurantId,
            String name,
            String description,
            double basePrice,
            double? originalPrice,
            List<String> images,
            String? videoUrl,
            List<DishCategory> categories,
            List<DishDietaryTag> dietaryTags,
            List<Allergen> allergens,
            DishSpiceLevel spiceLevel,
            DishStatus status,
            int? calories,
            List<CustomizationGroup> customizations,
            bool isAvailable,
            bool isSoldOut,
            bool isPopular,
            bool isNew,
            bool isBestseller,
            bool isChefSpecial,
            int? dailyLimit,
            PrepTime prepTime,
            List<String> suggestedPairingIds,
            DateTime createdAt,
            DateTime updatedAt,
            bool isActive)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dish():
        return $default(
            _that.id,
            _that.restaurantId,
            _that.name,
            _that.description,
            _that.basePrice,
            _that.originalPrice,
            _that.images,
            _that.videoUrl,
            _that.categories,
            _that.dietaryTags,
            _that.allergens,
            _that.spiceLevel,
            _that.status,
            _that.calories,
            _that.customizations,
            _that.isAvailable,
            _that.isSoldOut,
            _that.isPopular,
            _that.isNew,
            _that.isBestseller,
            _that.isChefSpecial,
            _that.dailyLimit,
            _that.prepTime,
            _that.suggestedPairingIds,
            _that.createdAt,
            _that.updatedAt,
            _that.isActive);
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
            String restaurantId,
            String name,
            String description,
            double basePrice,
            double? originalPrice,
            List<String> images,
            String? videoUrl,
            List<DishCategory> categories,
            List<DishDietaryTag> dietaryTags,
            List<Allergen> allergens,
            DishSpiceLevel spiceLevel,
            DishStatus status,
            int? calories,
            List<CustomizationGroup> customizations,
            bool isAvailable,
            bool isSoldOut,
            bool isPopular,
            bool isNew,
            bool isBestseller,
            bool isChefSpecial,
            int? dailyLimit,
            PrepTime prepTime,
            List<String> suggestedPairingIds,
            DateTime createdAt,
            DateTime updatedAt,
            bool isActive)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Dish() when $default != null:
        return $default(
            _that.id,
            _that.restaurantId,
            _that.name,
            _that.description,
            _that.basePrice,
            _that.originalPrice,
            _that.images,
            _that.videoUrl,
            _that.categories,
            _that.dietaryTags,
            _that.allergens,
            _that.spiceLevel,
            _that.status,
            _that.calories,
            _that.customizations,
            _that.isAvailable,
            _that.isSoldOut,
            _that.isPopular,
            _that.isNew,
            _that.isBestseller,
            _that.isChefSpecial,
            _that.dailyLimit,
            _that.prepTime,
            _that.suggestedPairingIds,
            _that.createdAt,
            _that.updatedAt,
            _that.isActive);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Dish extends Dish {
  const _Dish(
      {required this.id,
      required this.restaurantId,
      required this.name,
      required this.description,
      required this.basePrice,
      this.originalPrice,
      final List<String> images = const [],
      this.videoUrl,
      final List<DishCategory> categories = const [],
      final List<DishDietaryTag> dietaryTags = const [],
      final List<Allergen> allergens = const [],
      this.spiceLevel = DishSpiceLevel.none,
      this.status = DishStatus.available,
      this.calories,
      final List<CustomizationGroup> customizations = const [],
      this.isAvailable = true,
      this.isSoldOut = false,
      this.isPopular = false,
      this.isNew = false,
      this.isBestseller = false,
      this.isChefSpecial = false,
      this.dailyLimit,
      this.prepTime = PrepTime.standard,
      final List<String> suggestedPairingIds = const [],
      required this.createdAt,
      required this.updatedAt,
      this.isActive = true})
      : _images = images,
        _categories = categories,
        _dietaryTags = dietaryTags,
        _allergens = allergens,
        _customizations = customizations,
        _suggestedPairingIds = suggestedPairingIds,
        super._();
  factory _Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);

  @override
  final String id;
  @override
  final String restaurantId;
  @override
  final String name;
  @override
  final String description;
  @override
  final double basePrice;
  @override
  final double? originalPrice;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? videoUrl;
// Classification
  final List<DishCategory> _categories;
// Classification
  @override
  @JsonKey()
  List<DishCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<DishDietaryTag> _dietaryTags;
  @override
  @JsonKey()
  List<DishDietaryTag> get dietaryTags {
    if (_dietaryTags is EqualUnmodifiableListView) return _dietaryTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietaryTags);
  }

  final List<Allergen> _allergens;
  @override
  @JsonKey()
  List<Allergen> get allergens {
    if (_allergens is EqualUnmodifiableListView) return _allergens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergens);
  }

  @override
  @JsonKey()
  final DishSpiceLevel spiceLevel;
  @override
  @JsonKey()
  final DishStatus status;
  @override
  final int? calories;
// Customizations — each dish has its own unique groups
  final List<CustomizationGroup> _customizations;
// Customizations — each dish has its own unique groups
  @override
  @JsonKey()
  List<CustomizationGroup> get customizations {
    if (_customizations is EqualUnmodifiableListView) return _customizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customizations);
  }

// Availability
  @override
  @JsonKey()
  final bool isAvailable;
  @override
  @JsonKey()
  final bool isSoldOut;
  @override
  @JsonKey()
  final bool isPopular;
  @override
  @JsonKey()
  final bool isNew;
  @override
  @JsonKey()
  final bool isBestseller;
  @override
  @JsonKey()
  final bool isChefSpecial;
  @override
  final int? dailyLimit;
  @override
  @JsonKey()
  final PrepTime prepTime;
// Suggested pairings
  final List<String> _suggestedPairingIds;
// Suggested pairings
  @override
  @JsonKey()
  List<String> get suggestedPairingIds {
    if (_suggestedPairingIds is EqualUnmodifiableListView)
      return _suggestedPairingIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedPairingIds);
  }

// Metadata
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey()
  final bool isActive;

  /// Create a copy of Dish
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DishCopyWith<_Dish> get copyWith =>
      __$DishCopyWithImpl<_Dish>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DishToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Dish &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._dietaryTags, _dietaryTags) &&
            const DeepCollectionEquality()
                .equals(other._allergens, _allergens) &&
            (identical(other.spiceLevel, spiceLevel) ||
                other.spiceLevel == spiceLevel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            const DeepCollectionEquality()
                .equals(other._customizations, _customizations) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.isSoldOut, isSoldOut) ||
                other.isSoldOut == isSoldOut) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isBestseller, isBestseller) ||
                other.isBestseller == isBestseller) &&
            (identical(other.isChefSpecial, isChefSpecial) ||
                other.isChefSpecial == isChefSpecial) &&
            (identical(other.dailyLimit, dailyLimit) ||
                other.dailyLimit == dailyLimit) &&
            (identical(other.prepTime, prepTime) ||
                other.prepTime == prepTime) &&
            const DeepCollectionEquality()
                .equals(other._suggestedPairingIds, _suggestedPairingIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        restaurantId,
        name,
        description,
        basePrice,
        originalPrice,
        const DeepCollectionEquality().hash(_images),
        videoUrl,
        const DeepCollectionEquality().hash(_categories),
        const DeepCollectionEquality().hash(_dietaryTags),
        const DeepCollectionEquality().hash(_allergens),
        spiceLevel,
        status,
        calories,
        const DeepCollectionEquality().hash(_customizations),
        isAvailable,
        isSoldOut,
        isPopular,
        isNew,
        isBestseller,
        isChefSpecial,
        dailyLimit,
        prepTime,
        const DeepCollectionEquality().hash(_suggestedPairingIds),
        createdAt,
        updatedAt,
        isActive
      ]);

  @override
  String toString() {
    return 'Dish(id: $id, restaurantId: $restaurantId, name: $name, description: $description, basePrice: $basePrice, originalPrice: $originalPrice, images: $images, videoUrl: $videoUrl, categories: $categories, dietaryTags: $dietaryTags, allergens: $allergens, spiceLevel: $spiceLevel, status: $status, calories: $calories, customizations: $customizations, isAvailable: $isAvailable, isSoldOut: $isSoldOut, isPopular: $isPopular, isNew: $isNew, isBestseller: $isBestseller, isChefSpecial: $isChefSpecial, dailyLimit: $dailyLimit, prepTime: $prepTime, suggestedPairingIds: $suggestedPairingIds, createdAt: $createdAt, updatedAt: $updatedAt, isActive: $isActive)';
  }
}

/// @nodoc
abstract mixin class _$DishCopyWith<$Res> implements $DishCopyWith<$Res> {
  factory _$DishCopyWith(_Dish value, $Res Function(_Dish) _then) =
      __$DishCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String restaurantId,
      String name,
      String description,
      double basePrice,
      double? originalPrice,
      List<String> images,
      String? videoUrl,
      List<DishCategory> categories,
      List<DishDietaryTag> dietaryTags,
      List<Allergen> allergens,
      DishSpiceLevel spiceLevel,
      DishStatus status,
      int? calories,
      List<CustomizationGroup> customizations,
      bool isAvailable,
      bool isSoldOut,
      bool isPopular,
      bool isNew,
      bool isBestseller,
      bool isChefSpecial,
      int? dailyLimit,
      PrepTime prepTime,
      List<String> suggestedPairingIds,
      DateTime createdAt,
      DateTime updatedAt,
      bool isActive});
}

/// @nodoc
class __$DishCopyWithImpl<$Res> implements _$DishCopyWith<$Res> {
  __$DishCopyWithImpl(this._self, this._then);

  final _Dish _self;
  final $Res Function(_Dish) _then;

  /// Create a copy of Dish
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? restaurantId = null,
    Object? name = null,
    Object? description = null,
    Object? basePrice = null,
    Object? originalPrice = freezed,
    Object? images = null,
    Object? videoUrl = freezed,
    Object? categories = null,
    Object? dietaryTags = null,
    Object? allergens = null,
    Object? spiceLevel = null,
    Object? status = null,
    Object? calories = freezed,
    Object? customizations = null,
    Object? isAvailable = null,
    Object? isSoldOut = null,
    Object? isPopular = null,
    Object? isNew = null,
    Object? isBestseller = null,
    Object? isChefSpecial = null,
    Object? dailyLimit = freezed,
    Object? prepTime = null,
    Object? suggestedPairingIds = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isActive = null,
  }) {
    return _then(_Dish(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: null == restaurantId
          ? _self.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      basePrice: null == basePrice
          ? _self.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double,
      originalPrice: freezed == originalPrice
          ? _self.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrl: freezed == videoUrl
          ? _self.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<DishCategory>,
      dietaryTags: null == dietaryTags
          ? _self._dietaryTags
          : dietaryTags // ignore: cast_nullable_to_non_nullable
              as List<DishDietaryTag>,
      allergens: null == allergens
          ? _self._allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<Allergen>,
      spiceLevel: null == spiceLevel
          ? _self.spiceLevel
          : spiceLevel // ignore: cast_nullable_to_non_nullable
              as DishSpiceLevel,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DishStatus,
      calories: freezed == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
      customizations: null == customizations
          ? _self._customizations
          : customizations // ignore: cast_nullable_to_non_nullable
              as List<CustomizationGroup>,
      isAvailable: null == isAvailable
          ? _self.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isSoldOut: null == isSoldOut
          ? _self.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isPopular: null == isPopular
          ? _self.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      isNew: null == isNew
          ? _self.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      isBestseller: null == isBestseller
          ? _self.isBestseller
          : isBestseller // ignore: cast_nullable_to_non_nullable
              as bool,
      isChefSpecial: null == isChefSpecial
          ? _self.isChefSpecial
          : isChefSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
      dailyLimit: freezed == dailyLimit
          ? _self.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      prepTime: null == prepTime
          ? _self.prepTime
          : prepTime // ignore: cast_nullable_to_non_nullable
              as PrepTime,
      suggestedPairingIds: null == suggestedPairingIds
          ? _self._suggestedPairingIds
          : suggestedPairingIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
