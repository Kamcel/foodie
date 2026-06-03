// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartItem {
  String get id;
  String get dishId;
  String get dishName;
  String get description;
  String get imageUrl;
  String? get selectedSize;
  List<String> get selectedToppings;
  double get basePrice;
  int get quantity;
  String? get note;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CartItemCopyWith<CartItem> get copyWith =>
      _$CartItemCopyWithImpl<CartItem>(this as CartItem, _$identity);

  /// Serializes this CartItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CartItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dishId, dishId) || other.dishId == dishId) &&
            (identical(other.dishName, dishName) ||
                other.dishName == dishName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.selectedSize, selectedSize) ||
                other.selectedSize == selectedSize) &&
            const DeepCollectionEquality()
                .equals(other.selectedToppings, selectedToppings) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dishId,
      dishName,
      description,
      imageUrl,
      selectedSize,
      const DeepCollectionEquality().hash(selectedToppings),
      basePrice,
      quantity,
      note);

  @override
  String toString() {
    return 'CartItem(id: $id, dishId: $dishId, dishName: $dishName, description: $description, imageUrl: $imageUrl, selectedSize: $selectedSize, selectedToppings: $selectedToppings, basePrice: $basePrice, quantity: $quantity, note: $note)';
  }
}

/// @nodoc
abstract mixin class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) _then) =
      _$CartItemCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String dishId,
      String dishName,
      String description,
      String imageUrl,
      String? selectedSize,
      List<String> selectedToppings,
      double basePrice,
      int quantity,
      String? note});
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._self, this._then);

  final CartItem _self;
  final $Res Function(CartItem) _then;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dishId = null,
    Object? dishName = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? selectedSize = freezed,
    Object? selectedToppings = null,
    Object? basePrice = null,
    Object? quantity = null,
    Object? note = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dishId: null == dishId
          ? _self.dishId
          : dishId // ignore: cast_nullable_to_non_nullable
              as String,
      dishName: null == dishName
          ? _self.dishName
          : dishName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSize: freezed == selectedSize
          ? _self.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedToppings: null == selectedToppings
          ? _self.selectedToppings
          : selectedToppings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      basePrice: null == basePrice
          ? _self.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CartItem].
extension CartItemPatterns on CartItem {
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
    TResult Function(_CartItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CartItem() when $default != null:
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
    TResult Function(_CartItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CartItem():
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
    TResult? Function(_CartItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CartItem() when $default != null:
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
            String dishId,
            String dishName,
            String description,
            String imageUrl,
            String? selectedSize,
            List<String> selectedToppings,
            double basePrice,
            int quantity,
            String? note)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CartItem() when $default != null:
        return $default(
            _that.id,
            _that.dishId,
            _that.dishName,
            _that.description,
            _that.imageUrl,
            _that.selectedSize,
            _that.selectedToppings,
            _that.basePrice,
            _that.quantity,
            _that.note);
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
            String dishId,
            String dishName,
            String description,
            String imageUrl,
            String? selectedSize,
            List<String> selectedToppings,
            double basePrice,
            int quantity,
            String? note)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CartItem():
        return $default(
            _that.id,
            _that.dishId,
            _that.dishName,
            _that.description,
            _that.imageUrl,
            _that.selectedSize,
            _that.selectedToppings,
            _that.basePrice,
            _that.quantity,
            _that.note);
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
            String dishId,
            String dishName,
            String description,
            String imageUrl,
            String? selectedSize,
            List<String> selectedToppings,
            double basePrice,
            int quantity,
            String? note)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CartItem() when $default != null:
        return $default(
            _that.id,
            _that.dishId,
            _that.dishName,
            _that.description,
            _that.imageUrl,
            _that.selectedSize,
            _that.selectedToppings,
            _that.basePrice,
            _that.quantity,
            _that.note);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CartItem implements CartItem {
  const _CartItem(
      {required this.id,
      required this.dishId,
      required this.dishName,
      required this.description,
      required this.imageUrl,
      this.selectedSize,
      final List<String> selectedToppings = const [],
      required this.basePrice,
      this.quantity = 1,
      this.note})
      : _selectedToppings = selectedToppings;
  factory _CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);

  @override
  final String id;
  @override
  final String dishId;
  @override
  final String dishName;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String? selectedSize;
  final List<String> _selectedToppings;
  @override
  @JsonKey()
  List<String> get selectedToppings {
    if (_selectedToppings is EqualUnmodifiableListView)
      return _selectedToppings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedToppings);
  }

  @override
  final double basePrice;
  @override
  @JsonKey()
  final int quantity;
  @override
  final String? note;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CartItemCopyWith<_CartItem> get copyWith =>
      __$CartItemCopyWithImpl<_CartItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CartItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dishId, dishId) || other.dishId == dishId) &&
            (identical(other.dishName, dishName) ||
                other.dishName == dishName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.selectedSize, selectedSize) ||
                other.selectedSize == selectedSize) &&
            const DeepCollectionEquality()
                .equals(other._selectedToppings, _selectedToppings) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dishId,
      dishName,
      description,
      imageUrl,
      selectedSize,
      const DeepCollectionEquality().hash(_selectedToppings),
      basePrice,
      quantity,
      note);

  @override
  String toString() {
    return 'CartItem(id: $id, dishId: $dishId, dishName: $dishName, description: $description, imageUrl: $imageUrl, selectedSize: $selectedSize, selectedToppings: $selectedToppings, basePrice: $basePrice, quantity: $quantity, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$CartItemCopyWith<$Res>
    implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) _then) =
      __$CartItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String dishId,
      String dishName,
      String description,
      String imageUrl,
      String? selectedSize,
      List<String> selectedToppings,
      double basePrice,
      int quantity,
      String? note});
}

/// @nodoc
class __$CartItemCopyWithImpl<$Res> implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(this._self, this._then);

  final _CartItem _self;
  final $Res Function(_CartItem) _then;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? dishId = null,
    Object? dishName = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? selectedSize = freezed,
    Object? selectedToppings = null,
    Object? basePrice = null,
    Object? quantity = null,
    Object? note = freezed,
  }) {
    return _then(_CartItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dishId: null == dishId
          ? _self.dishId
          : dishId // ignore: cast_nullable_to_non_nullable
              as String,
      dishName: null == dishName
          ? _self.dishName
          : dishName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSize: freezed == selectedSize
          ? _self.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedToppings: null == selectedToppings
          ? _self._selectedToppings
          : selectedToppings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      basePrice: null == basePrice
          ? _self.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
