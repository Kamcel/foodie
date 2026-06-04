// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cart {
  List<CartItem> get items;
  String? get promoCode;
  double get deliveryFee;
  double get taxFee;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CartCopyWith<Cart> get copyWith =>
      _$CartCopyWithImpl<Cart>(this as Cart, _$identity);

  /// Serializes this Cart to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Cart &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.taxFee, taxFee) || other.taxFee == taxFee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      promoCode,
      deliveryFee,
      taxFee);

  @override
  String toString() {
    return 'Cart(items: $items, promoCode: $promoCode, deliveryFee: $deliveryFee, taxFee: $taxFee)';
  }
}

/// @nodoc
abstract mixin class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) _then) =
      _$CartCopyWithImpl;
  @useResult
  $Res call(
      {List<CartItem> items,
      String? promoCode,
      double deliveryFee,
      double taxFee});
}

/// @nodoc
class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._self, this._then);

  final Cart _self;
  final $Res Function(Cart) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? promoCode = freezed,
    Object? deliveryFee = null,
    Object? taxFee = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      promoCode: freezed == promoCode
          ? _self.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryFee: null == deliveryFee
          ? _self.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      taxFee: null == taxFee
          ? _self.taxFee
          : taxFee // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [Cart].
extension CartPatterns on Cart {
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
    TResult Function(_Cart value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Cart() when $default != null:
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
    TResult Function(_Cart value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cart():
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
    TResult? Function(_Cart value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cart() when $default != null:
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
    TResult Function(List<CartItem> items, String? promoCode,
            double deliveryFee, double taxFee)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Cart() when $default != null:
        return $default(
            _that.items, _that.promoCode, _that.deliveryFee, _that.taxFee);
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
    TResult Function(List<CartItem> items, String? promoCode,
            double deliveryFee, double taxFee)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cart():
        return $default(
            _that.items, _that.promoCode, _that.deliveryFee, _that.taxFee);
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
    TResult? Function(List<CartItem> items, String? promoCode,
            double deliveryFee, double taxFee)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cart() when $default != null:
        return $default(
            _that.items, _that.promoCode, _that.deliveryFee, _that.taxFee);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Cart extends Cart {
  const _Cart(
      {final List<CartItem> items = const [],
      this.promoCode,
      this.deliveryFee = 0.0,
      this.taxFee = 0.0})
      : _items = items,
        super._();
  factory _Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  final List<CartItem> _items;
  @override
  @JsonKey()
  List<CartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? promoCode;
  @override
  @JsonKey()
  final double deliveryFee;
  @override
  @JsonKey()
  final double taxFee;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CartCopyWith<_Cart> get copyWith =>
      __$CartCopyWithImpl<_Cart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CartToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cart &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.taxFee, taxFee) || other.taxFee == taxFee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      promoCode,
      deliveryFee,
      taxFee);

  @override
  String toString() {
    return 'Cart(items: $items, promoCode: $promoCode, deliveryFee: $deliveryFee, taxFee: $taxFee)';
  }
}

/// @nodoc
abstract mixin class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) _then) =
      __$CartCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<CartItem> items,
      String? promoCode,
      double deliveryFee,
      double taxFee});
}

/// @nodoc
class __$CartCopyWithImpl<$Res> implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(this._self, this._then);

  final _Cart _self;
  final $Res Function(_Cart) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? promoCode = freezed,
    Object? deliveryFee = null,
    Object? taxFee = null,
  }) {
    return _then(_Cart(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      promoCode: freezed == promoCode
          ? _self.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryFee: null == deliveryFee
          ? _self.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      taxFee: null == taxFee
          ? _self.taxFee
          : taxFee // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
