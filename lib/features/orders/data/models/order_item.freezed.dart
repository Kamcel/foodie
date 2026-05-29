// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderItem {
// F -- Fields
  String get dishId;
  String get dishName;
  int get quantity;
  String get selectedSize;
  List<String> get selectedToppings;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderItemCopyWith<OrderItem> get copyWith =>
      _$OrderItemCopyWithImpl<OrderItem>(this as OrderItem, _$identity);

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderItem &&
            (identical(other.dishId, dishId) || other.dishId == dishId) &&
            (identical(other.dishName, dishName) ||
                other.dishName == dishName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.selectedSize, selectedSize) ||
                other.selectedSize == selectedSize) &&
            const DeepCollectionEquality()
                .equals(other.selectedToppings, selectedToppings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dishId, dishName, quantity,
      selectedSize, const DeepCollectionEquality().hash(selectedToppings));

  @override
  String toString() {
    return 'OrderItem(dishId: $dishId, dishName: $dishName, quantity: $quantity, selectedSize: $selectedSize, selectedToppings: $selectedToppings)';
  }
}

/// @nodoc
abstract mixin class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) _then) =
      _$OrderItemCopyWithImpl;
  @useResult
  $Res call(
      {String dishId,
      String dishName,
      int quantity,
      String selectedSize,
      List<String> selectedToppings});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res> implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._self, this._then);

  final OrderItem _self;
  final $Res Function(OrderItem) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishId = null,
    Object? dishName = null,
    Object? quantity = null,
    Object? selectedSize = null,
    Object? selectedToppings = null,
  }) {
    return _then(_self.copyWith(
      dishId: null == dishId
          ? _self.dishId
          : dishId // ignore: cast_nullable_to_non_nullable
              as String,
      dishName: null == dishName
          ? _self.dishName
          : dishName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      selectedSize: null == selectedSize
          ? _self.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as String,
      selectedToppings: null == selectedToppings
          ? _self.selectedToppings
          : selectedToppings // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderItem].
extension OrderItemPatterns on OrderItem {
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
    TResult Function(_OrderItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItem() when $default != null:
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
    TResult Function(_OrderItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItem():
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
    TResult? Function(_OrderItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItem() when $default != null:
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
    TResult Function(String dishId, String dishName, int quantity,
            String selectedSize, List<String> selectedToppings)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItem() when $default != null:
        return $default(_that.dishId, _that.dishName, _that.quantity,
            _that.selectedSize, _that.selectedToppings);
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
    TResult Function(String dishId, String dishName, int quantity,
            String selectedSize, List<String> selectedToppings)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItem():
        return $default(_that.dishId, _that.dishName, _that.quantity,
            _that.selectedSize, _that.selectedToppings);
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
    TResult? Function(String dishId, String dishName, int quantity,
            String selectedSize, List<String> selectedToppings)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItem() when $default != null:
        return $default(_that.dishId, _that.dishName, _that.quantity,
            _that.selectedSize, _that.selectedToppings);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderItem extends OrderItem {
  const _OrderItem(
      {required this.dishId,
      required this.dishName,
      required this.quantity,
      required this.selectedSize,
      final List<String> selectedToppings = const []})
      : _selectedToppings = selectedToppings,
        super._();
  factory _OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

// F -- Fields
  @override
  final String dishId;
  @override
  final String dishName;
  @override
  final int quantity;
  @override
  final String selectedSize;
  final List<String> _selectedToppings;
  @override
  @JsonKey()
  List<String> get selectedToppings {
    if (_selectedToppings is EqualUnmodifiableListView)
      return _selectedToppings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedToppings);
  }

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderItemCopyWith<_OrderItem> get copyWith =>
      __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderItem &&
            (identical(other.dishId, dishId) || other.dishId == dishId) &&
            (identical(other.dishName, dishName) ||
                other.dishName == dishName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.selectedSize, selectedSize) ||
                other.selectedSize == selectedSize) &&
            const DeepCollectionEquality()
                .equals(other._selectedToppings, _selectedToppings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dishId, dishName, quantity,
      selectedSize, const DeepCollectionEquality().hash(_selectedToppings));

  @override
  String toString() {
    return 'OrderItem(dishId: $dishId, dishName: $dishName, quantity: $quantity, selectedSize: $selectedSize, selectedToppings: $selectedToppings)';
  }
}

/// @nodoc
abstract mixin class _$OrderItemCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(
          _OrderItem value, $Res Function(_OrderItem) _then) =
      __$OrderItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String dishId,
      String dishName,
      int quantity,
      String selectedSize,
      List<String> selectedToppings});
}

/// @nodoc
class __$OrderItemCopyWithImpl<$Res> implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(this._self, this._then);

  final _OrderItem _self;
  final $Res Function(_OrderItem) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dishId = null,
    Object? dishName = null,
    Object? quantity = null,
    Object? selectedSize = null,
    Object? selectedToppings = null,
  }) {
    return _then(_OrderItem(
      dishId: null == dishId
          ? _self.dishId
          : dishId // ignore: cast_nullable_to_non_nullable
              as String,
      dishName: null == dishName
          ? _self.dishName
          : dishName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      selectedSize: null == selectedSize
          ? _self.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as String,
      selectedToppings: null == selectedToppings
          ? _self._selectedToppings
          : selectedToppings // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
