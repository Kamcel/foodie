// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_menu_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantMenuItem {
// F -- Fields
  String get id;
  String get name;
  String get description;
  double get basePrice;
  double? get originalPrice;
  List<String> get images;
  MenuItemStatus get status;
  List<RestaurantDietaryPreference> get dietaryTags;
  List<String> get allergens;
  int? get calories;
  Map<String, dynamic>? get nutritionFacts;
  List<RestaurantCustomizationGroup> get customizations;
  int get prepTimeMinutes;
  bool get isPopular;
  bool get isNew;

  /// Create a copy of RestaurantMenuItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestaurantMenuItemCopyWith<RestaurantMenuItem> get copyWith =>
      _$RestaurantMenuItemCopyWithImpl<RestaurantMenuItem>(
          this as RestaurantMenuItem, _$identity);

  /// Serializes this RestaurantMenuItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestaurantMenuItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.dietaryTags, dietaryTags) &&
            const DeepCollectionEquality().equals(other.allergens, allergens) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            const DeepCollectionEquality()
                .equals(other.nutritionFacts, nutritionFacts) &&
            const DeepCollectionEquality()
                .equals(other.customizations, customizations) &&
            (identical(other.prepTimeMinutes, prepTimeMinutes) ||
                other.prepTimeMinutes == prepTimeMinutes) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular) &&
            (identical(other.isNew, isNew) || other.isNew == isNew));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      basePrice,
      originalPrice,
      const DeepCollectionEquality().hash(images),
      status,
      const DeepCollectionEquality().hash(dietaryTags),
      const DeepCollectionEquality().hash(allergens),
      calories,
      const DeepCollectionEquality().hash(nutritionFacts),
      const DeepCollectionEquality().hash(customizations),
      prepTimeMinutes,
      isPopular,
      isNew);

  @override
  String toString() {
    return 'RestaurantMenuItem(id: $id, name: $name, description: $description, basePrice: $basePrice, originalPrice: $originalPrice, images: $images, status: $status, dietaryTags: $dietaryTags, allergens: $allergens, calories: $calories, nutritionFacts: $nutritionFacts, customizations: $customizations, prepTimeMinutes: $prepTimeMinutes, isPopular: $isPopular, isNew: $isNew)';
  }
}

/// @nodoc
abstract mixin class $RestaurantMenuItemCopyWith<$Res> {
  factory $RestaurantMenuItemCopyWith(
          RestaurantMenuItem value, $Res Function(RestaurantMenuItem) _then) =
      _$RestaurantMenuItemCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      double basePrice,
      double? originalPrice,
      List<String> images,
      MenuItemStatus status,
      List<RestaurantDietaryPreference> dietaryTags,
      List<String> allergens,
      int? calories,
      Map<String, dynamic>? nutritionFacts,
      List<RestaurantCustomizationGroup> customizations,
      int prepTimeMinutes,
      bool isPopular,
      bool isNew});
}

/// @nodoc
class _$RestaurantMenuItemCopyWithImpl<$Res>
    implements $RestaurantMenuItemCopyWith<$Res> {
  _$RestaurantMenuItemCopyWithImpl(this._self, this._then);

  final RestaurantMenuItem _self;
  final $Res Function(RestaurantMenuItem) _then;

  /// Create a copy of RestaurantMenuItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? basePrice = null,
    Object? originalPrice = freezed,
    Object? images = null,
    Object? status = null,
    Object? dietaryTags = null,
    Object? allergens = null,
    Object? calories = freezed,
    Object? nutritionFacts = freezed,
    Object? customizations = null,
    Object? prepTimeMinutes = null,
    Object? isPopular = null,
    Object? isNew = null,
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
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as MenuItemStatus,
      dietaryTags: null == dietaryTags
          ? _self.dietaryTags
          : dietaryTags // ignore: cast_nullable_to_non_nullable
              as List<RestaurantDietaryPreference>,
      allergens: null == allergens
          ? _self.allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calories: freezed == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
      nutritionFacts: freezed == nutritionFacts
          ? _self.nutritionFacts
          : nutritionFacts // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      customizations: null == customizations
          ? _self.customizations
          : customizations // ignore: cast_nullable_to_non_nullable
              as List<RestaurantCustomizationGroup>,
      prepTimeMinutes: null == prepTimeMinutes
          ? _self.prepTimeMinutes
          : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      isPopular: null == isPopular
          ? _self.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      isNew: null == isNew
          ? _self.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [RestaurantMenuItem].
extension RestaurantMenuItemPatterns on RestaurantMenuItem {
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
    TResult Function(_RestaurantMenuItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantMenuItem() when $default != null:
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
    TResult Function(_RestaurantMenuItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantMenuItem():
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
    TResult? Function(_RestaurantMenuItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantMenuItem() when $default != null:
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
            String description,
            double basePrice,
            double? originalPrice,
            List<String> images,
            MenuItemStatus status,
            List<RestaurantDietaryPreference> dietaryTags,
            List<String> allergens,
            int? calories,
            Map<String, dynamic>? nutritionFacts,
            List<RestaurantCustomizationGroup> customizations,
            int prepTimeMinutes,
            bool isPopular,
            bool isNew)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantMenuItem() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.basePrice,
            _that.originalPrice,
            _that.images,
            _that.status,
            _that.dietaryTags,
            _that.allergens,
            _that.calories,
            _that.nutritionFacts,
            _that.customizations,
            _that.prepTimeMinutes,
            _that.isPopular,
            _that.isNew);
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
            String description,
            double basePrice,
            double? originalPrice,
            List<String> images,
            MenuItemStatus status,
            List<RestaurantDietaryPreference> dietaryTags,
            List<String> allergens,
            int? calories,
            Map<String, dynamic>? nutritionFacts,
            List<RestaurantCustomizationGroup> customizations,
            int prepTimeMinutes,
            bool isPopular,
            bool isNew)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantMenuItem():
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.basePrice,
            _that.originalPrice,
            _that.images,
            _that.status,
            _that.dietaryTags,
            _that.allergens,
            _that.calories,
            _that.nutritionFacts,
            _that.customizations,
            _that.prepTimeMinutes,
            _that.isPopular,
            _that.isNew);
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
            String description,
            double basePrice,
            double? originalPrice,
            List<String> images,
            MenuItemStatus status,
            List<RestaurantDietaryPreference> dietaryTags,
            List<String> allergens,
            int? calories,
            Map<String, dynamic>? nutritionFacts,
            List<RestaurantCustomizationGroup> customizations,
            int prepTimeMinutes,
            bool isPopular,
            bool isNew)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantMenuItem() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.basePrice,
            _that.originalPrice,
            _that.images,
            _that.status,
            _that.dietaryTags,
            _that.allergens,
            _that.calories,
            _that.nutritionFacts,
            _that.customizations,
            _that.prepTimeMinutes,
            _that.isPopular,
            _that.isNew);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RestaurantMenuItem extends RestaurantMenuItem {
  const _RestaurantMenuItem(
      {required this.id,
      required this.name,
      required this.description,
      required this.basePrice,
      this.originalPrice,
      final List<String> images = const [],
      this.status = MenuItemStatus.available,
      final List<RestaurantDietaryPreference> dietaryTags = const [],
      final List<String> allergens = const [],
      this.calories,
      final Map<String, dynamic>? nutritionFacts,
      final List<RestaurantCustomizationGroup> customizations = const [],
      this.prepTimeMinutes = 15,
      this.isPopular = false,
      this.isNew = false})
      : _images = images,
        _dietaryTags = dietaryTags,
        _allergens = allergens,
        _nutritionFacts = nutritionFacts,
        _customizations = customizations,
        super._();
  factory _RestaurantMenuItem.fromJson(Map<String, dynamic> json) =>
      _$RestaurantMenuItemFromJson(json);

// F -- Fields
  @override
  final String id;
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
  @JsonKey()
  final MenuItemStatus status;
  final List<RestaurantDietaryPreference> _dietaryTags;
  @override
  @JsonKey()
  List<RestaurantDietaryPreference> get dietaryTags {
    if (_dietaryTags is EqualUnmodifiableListView) return _dietaryTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietaryTags);
  }

  final List<String> _allergens;
  @override
  @JsonKey()
  List<String> get allergens {
    if (_allergens is EqualUnmodifiableListView) return _allergens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergens);
  }

  @override
  final int? calories;
  final Map<String, dynamic>? _nutritionFacts;
  @override
  Map<String, dynamic>? get nutritionFacts {
    final value = _nutritionFacts;
    if (value == null) return null;
    if (_nutritionFacts is EqualUnmodifiableMapView) return _nutritionFacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<RestaurantCustomizationGroup> _customizations;
  @override
  @JsonKey()
  List<RestaurantCustomizationGroup> get customizations {
    if (_customizations is EqualUnmodifiableListView) return _customizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customizations);
  }

  @override
  @JsonKey()
  final int prepTimeMinutes;
  @override
  @JsonKey()
  final bool isPopular;
  @override
  @JsonKey()
  final bool isNew;

  /// Create a copy of RestaurantMenuItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RestaurantMenuItemCopyWith<_RestaurantMenuItem> get copyWith =>
      __$RestaurantMenuItemCopyWithImpl<_RestaurantMenuItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RestaurantMenuItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestaurantMenuItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._dietaryTags, _dietaryTags) &&
            const DeepCollectionEquality()
                .equals(other._allergens, _allergens) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            const DeepCollectionEquality()
                .equals(other._nutritionFacts, _nutritionFacts) &&
            const DeepCollectionEquality()
                .equals(other._customizations, _customizations) &&
            (identical(other.prepTimeMinutes, prepTimeMinutes) ||
                other.prepTimeMinutes == prepTimeMinutes) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular) &&
            (identical(other.isNew, isNew) || other.isNew == isNew));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      basePrice,
      originalPrice,
      const DeepCollectionEquality().hash(_images),
      status,
      const DeepCollectionEquality().hash(_dietaryTags),
      const DeepCollectionEquality().hash(_allergens),
      calories,
      const DeepCollectionEquality().hash(_nutritionFacts),
      const DeepCollectionEquality().hash(_customizations),
      prepTimeMinutes,
      isPopular,
      isNew);

  @override
  String toString() {
    return 'RestaurantMenuItem(id: $id, name: $name, description: $description, basePrice: $basePrice, originalPrice: $originalPrice, images: $images, status: $status, dietaryTags: $dietaryTags, allergens: $allergens, calories: $calories, nutritionFacts: $nutritionFacts, customizations: $customizations, prepTimeMinutes: $prepTimeMinutes, isPopular: $isPopular, isNew: $isNew)';
  }
}

/// @nodoc
abstract mixin class _$RestaurantMenuItemCopyWith<$Res>
    implements $RestaurantMenuItemCopyWith<$Res> {
  factory _$RestaurantMenuItemCopyWith(
          _RestaurantMenuItem value, $Res Function(_RestaurantMenuItem) _then) =
      __$RestaurantMenuItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      double basePrice,
      double? originalPrice,
      List<String> images,
      MenuItemStatus status,
      List<RestaurantDietaryPreference> dietaryTags,
      List<String> allergens,
      int? calories,
      Map<String, dynamic>? nutritionFacts,
      List<RestaurantCustomizationGroup> customizations,
      int prepTimeMinutes,
      bool isPopular,
      bool isNew});
}

/// @nodoc
class __$RestaurantMenuItemCopyWithImpl<$Res>
    implements _$RestaurantMenuItemCopyWith<$Res> {
  __$RestaurantMenuItemCopyWithImpl(this._self, this._then);

  final _RestaurantMenuItem _self;
  final $Res Function(_RestaurantMenuItem) _then;

  /// Create a copy of RestaurantMenuItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? basePrice = null,
    Object? originalPrice = freezed,
    Object? images = null,
    Object? status = null,
    Object? dietaryTags = null,
    Object? allergens = null,
    Object? calories = freezed,
    Object? nutritionFacts = freezed,
    Object? customizations = null,
    Object? prepTimeMinutes = null,
    Object? isPopular = null,
    Object? isNew = null,
  }) {
    return _then(_RestaurantMenuItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as MenuItemStatus,
      dietaryTags: null == dietaryTags
          ? _self._dietaryTags
          : dietaryTags // ignore: cast_nullable_to_non_nullable
              as List<RestaurantDietaryPreference>,
      allergens: null == allergens
          ? _self._allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calories: freezed == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
      nutritionFacts: freezed == nutritionFacts
          ? _self._nutritionFacts
          : nutritionFacts // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      customizations: null == customizations
          ? _self._customizations
          : customizations // ignore: cast_nullable_to_non_nullable
              as List<RestaurantCustomizationGroup>,
      prepTimeMinutes: null == prepTimeMinutes
          ? _self.prepTimeMinutes
          : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      isPopular: null == isPopular
          ? _self.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      isNew: null == isNew
          ? _self.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
