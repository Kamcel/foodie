// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_customization_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantCustomizationOption {
// F -- Fields
  String get id;
  String get name;
  double get additionalPrice;
  bool get isDefault;
  bool get isAvailable;
  String? get imageUrl;

  /// Create a copy of RestaurantCustomizationOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestaurantCustomizationOptionCopyWith<RestaurantCustomizationOption>
      get copyWith => _$RestaurantCustomizationOptionCopyWithImpl<
              RestaurantCustomizationOption>(
          this as RestaurantCustomizationOption, _$identity);

  /// Serializes this RestaurantCustomizationOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestaurantCustomizationOption &&
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
    return 'RestaurantCustomizationOption(id: $id, name: $name, additionalPrice: $additionalPrice, isDefault: $isDefault, isAvailable: $isAvailable, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $RestaurantCustomizationOptionCopyWith<$Res> {
  factory $RestaurantCustomizationOptionCopyWith(
          RestaurantCustomizationOption value,
          $Res Function(RestaurantCustomizationOption) _then) =
      _$RestaurantCustomizationOptionCopyWithImpl;
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
class _$RestaurantCustomizationOptionCopyWithImpl<$Res>
    implements $RestaurantCustomizationOptionCopyWith<$Res> {
  _$RestaurantCustomizationOptionCopyWithImpl(this._self, this._then);

  final RestaurantCustomizationOption _self;
  final $Res Function(RestaurantCustomizationOption) _then;

  /// Create a copy of RestaurantCustomizationOption
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

/// Adds pattern-matching-related methods to [RestaurantCustomizationOption].
extension RestaurantCustomizationOptionPatterns
    on RestaurantCustomizationOption {
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
    TResult Function(_RestaurantCustomizationOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantCustomizationOption() when $default != null:
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
    TResult Function(_RestaurantCustomizationOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantCustomizationOption():
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
    TResult? Function(_RestaurantCustomizationOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantCustomizationOption() when $default != null:
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
      case _RestaurantCustomizationOption() when $default != null:
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
      case _RestaurantCustomizationOption():
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
      case _RestaurantCustomizationOption() when $default != null:
        return $default(_that.id, _that.name, _that.additionalPrice,
            _that.isDefault, _that.isAvailable, _that.imageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RestaurantCustomizationOption extends RestaurantCustomizationOption {
  const _RestaurantCustomizationOption(
      {required this.id,
      required this.name,
      this.additionalPrice = 0.0,
      this.isDefault = false,
      this.isAvailable = true,
      this.imageUrl})
      : super._();
  factory _RestaurantCustomizationOption.fromJson(Map<String, dynamic> json) =>
      _$RestaurantCustomizationOptionFromJson(json);

// F -- Fields
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

  /// Create a copy of RestaurantCustomizationOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RestaurantCustomizationOptionCopyWith<_RestaurantCustomizationOption>
      get copyWith => __$RestaurantCustomizationOptionCopyWithImpl<
          _RestaurantCustomizationOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RestaurantCustomizationOptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestaurantCustomizationOption &&
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
    return 'RestaurantCustomizationOption(id: $id, name: $name, additionalPrice: $additionalPrice, isDefault: $isDefault, isAvailable: $isAvailable, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$RestaurantCustomizationOptionCopyWith<$Res>
    implements $RestaurantCustomizationOptionCopyWith<$Res> {
  factory _$RestaurantCustomizationOptionCopyWith(
          _RestaurantCustomizationOption value,
          $Res Function(_RestaurantCustomizationOption) _then) =
      __$RestaurantCustomizationOptionCopyWithImpl;
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
class __$RestaurantCustomizationOptionCopyWithImpl<$Res>
    implements _$RestaurantCustomizationOptionCopyWith<$Res> {
  __$RestaurantCustomizationOptionCopyWithImpl(this._self, this._then);

  final _RestaurantCustomizationOption _self;
  final $Res Function(_RestaurantCustomizationOption) _then;

  /// Create a copy of RestaurantCustomizationOption
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
    return _then(_RestaurantCustomizationOption(
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

// dart format on
