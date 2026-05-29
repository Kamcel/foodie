// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Order {
// F -- Fields
  String get orderId;
  String get restaurantName;
  String get restaurantImage;
  List<OrderItem> get items;
  int get totalPriceInCents;
  OrderStatus get status;
  DateTime get dateOrdered;
  String? get calculatedEta;
  String? get driverName;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderCopyWith<Order> get copyWith =>
      _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Order &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.restaurantImage, restaurantImage) ||
                other.restaurantImage == restaurantImage) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.totalPriceInCents, totalPriceInCents) ||
                other.totalPriceInCents == totalPriceInCents) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateOrdered, dateOrdered) ||
                other.dateOrdered == dateOrdered) &&
            (identical(other.calculatedEta, calculatedEta) ||
                other.calculatedEta == calculatedEta) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      restaurantName,
      restaurantImage,
      const DeepCollectionEquality().hash(items),
      totalPriceInCents,
      status,
      dateOrdered,
      calculatedEta,
      driverName);

  @override
  String toString() {
    return 'Order(orderId: $orderId, restaurantName: $restaurantName, restaurantImage: $restaurantImage, items: $items, totalPriceInCents: $totalPriceInCents, status: $status, dateOrdered: $dateOrdered, calculatedEta: $calculatedEta, driverName: $driverName)';
  }
}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) =
      _$OrderCopyWithImpl;
  @useResult
  $Res call(
      {String orderId,
      String restaurantName,
      String restaurantImage,
      List<OrderItem> items,
      int totalPriceInCents,
      OrderStatus status,
      DateTime dateOrdered,
      String? calculatedEta,
      String? driverName});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? restaurantName = null,
    Object? restaurantImage = null,
    Object? items = null,
    Object? totalPriceInCents = null,
    Object? status = null,
    Object? dateOrdered = null,
    Object? calculatedEta = freezed,
    Object? driverName = freezed,
  }) {
    return _then(_self.copyWith(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: null == restaurantName
          ? _self.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantImage: null == restaurantImage
          ? _self.restaurantImage
          : restaurantImage // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      totalPriceInCents: null == totalPriceInCents
          ? _self.totalPriceInCents
          : totalPriceInCents // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      dateOrdered: null == dateOrdered
          ? _self.dateOrdered
          : dateOrdered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calculatedEta: freezed == calculatedEta
          ? _self.calculatedEta
          : calculatedEta // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
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
    TResult Function(_Order value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Order() when $default != null:
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
    TResult Function(_Order value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Order():
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
    TResult? Function(_Order value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Order() when $default != null:
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
            String orderId,
            String restaurantName,
            String restaurantImage,
            List<OrderItem> items,
            int totalPriceInCents,
            OrderStatus status,
            DateTime dateOrdered,
            String? calculatedEta,
            String? driverName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Order() when $default != null:
        return $default(
            _that.orderId,
            _that.restaurantName,
            _that.restaurantImage,
            _that.items,
            _that.totalPriceInCents,
            _that.status,
            _that.dateOrdered,
            _that.calculatedEta,
            _that.driverName);
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
            String orderId,
            String restaurantName,
            String restaurantImage,
            List<OrderItem> items,
            int totalPriceInCents,
            OrderStatus status,
            DateTime dateOrdered,
            String? calculatedEta,
            String? driverName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Order():
        return $default(
            _that.orderId,
            _that.restaurantName,
            _that.restaurantImage,
            _that.items,
            _that.totalPriceInCents,
            _that.status,
            _that.dateOrdered,
            _that.calculatedEta,
            _that.driverName);
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
            String orderId,
            String restaurantName,
            String restaurantImage,
            List<OrderItem> items,
            int totalPriceInCents,
            OrderStatus status,
            DateTime dateOrdered,
            String? calculatedEta,
            String? driverName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Order() when $default != null:
        return $default(
            _that.orderId,
            _that.restaurantName,
            _that.restaurantImage,
            _that.items,
            _that.totalPriceInCents,
            _that.status,
            _that.dateOrdered,
            _that.calculatedEta,
            _that.driverName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Order extends Order {
  const _Order(
      {required this.orderId,
      required this.restaurantName,
      required this.restaurantImage,
      final List<OrderItem> items = const [],
      required this.totalPriceInCents,
      required this.status,
      required this.dateOrdered,
      this.calculatedEta,
      this.driverName})
      : _items = items,
        super._();
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

// F -- Fields
  @override
  final String orderId;
  @override
  final String restaurantName;
  @override
  final String restaurantImage;
  final List<OrderItem> _items;
  @override
  @JsonKey()
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int totalPriceInCents;
  @override
  final OrderStatus status;
  @override
  final DateTime dateOrdered;
  @override
  final String? calculatedEta;
  @override
  final String? driverName;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderCopyWith<_Order> get copyWith =>
      __$OrderCopyWithImpl<_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Order &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.restaurantImage, restaurantImage) ||
                other.restaurantImage == restaurantImage) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalPriceInCents, totalPriceInCents) ||
                other.totalPriceInCents == totalPriceInCents) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateOrdered, dateOrdered) ||
                other.dateOrdered == dateOrdered) &&
            (identical(other.calculatedEta, calculatedEta) ||
                other.calculatedEta == calculatedEta) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      restaurantName,
      restaurantImage,
      const DeepCollectionEquality().hash(_items),
      totalPriceInCents,
      status,
      dateOrdered,
      calculatedEta,
      driverName);

  @override
  String toString() {
    return 'Order(orderId: $orderId, restaurantName: $restaurantName, restaurantImage: $restaurantImage, items: $items, totalPriceInCents: $totalPriceInCents, status: $status, dateOrdered: $dateOrdered, calculatedEta: $calculatedEta, driverName: $driverName)';
  }
}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) =
      __$OrderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String orderId,
      String restaurantName,
      String restaurantImage,
      List<OrderItem> items,
      int totalPriceInCents,
      OrderStatus status,
      DateTime dateOrdered,
      String? calculatedEta,
      String? driverName});
}

/// @nodoc
class __$OrderCopyWithImpl<$Res> implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? restaurantName = null,
    Object? restaurantImage = null,
    Object? items = null,
    Object? totalPriceInCents = null,
    Object? status = null,
    Object? dateOrdered = null,
    Object? calculatedEta = freezed,
    Object? driverName = freezed,
  }) {
    return _then(_Order(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: null == restaurantName
          ? _self.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantImage: null == restaurantImage
          ? _self.restaurantImage
          : restaurantImage // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      totalPriceInCents: null == totalPriceInCents
          ? _self.totalPriceInCents
          : totalPriceInCents // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      dateOrdered: null == dateOrdered
          ? _self.dateOrdered
          : dateOrdered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calculatedEta: freezed == calculatedEta
          ? _self.calculatedEta
          : calculatedEta // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
