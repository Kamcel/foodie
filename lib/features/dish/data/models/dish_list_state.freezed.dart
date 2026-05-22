// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DishListState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DishListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DishListState()';
  }
}

/// @nodoc
class $DishListStateCopyWith<$Res> {
  $DishListStateCopyWith(DishListState _, $Res Function(DishListState) __);
}

/// Adds pattern-matching-related methods to [DishListState].
extension DishListStatePatterns on DishListState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Loading() when loading != null:
        return loading(_that);
      case Success() when success != null:
        return success(_that);
      case Empty() when empty != null:
        return empty(_that);
      case Error() when error != null:
        return error(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Error value) error,
  }) {
    final _that = this;
    switch (_that) {
      case Loading():
        return loading(_that);
      case Success():
        return success(_that);
      case Empty():
        return empty(_that);
      case Error():
        return error(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Error value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case Loading() when loading != null:
        return loading(_that);
      case Success() when success != null:
        return success(_that);
      case Empty() when empty != null:
        return empty(_that);
      case Error() when error != null:
        return error(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Dish dish,
            PortionSize? selectedSize,
            List<CustomizationOption> selectedToppings,
            String note,
            int quantity)?
        success,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Loading() when loading != null:
        return loading();
      case Success() when success != null:
        return success(_that.dish, _that.selectedSize, _that.selectedToppings,
            _that.note, _that.quantity);
      case Empty() when empty != null:
        return empty();
      case Error() when error != null:
        return error(_that.message);
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
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Dish dish,
            PortionSize? selectedSize,
            List<CustomizationOption> selectedToppings,
            String note,
            int quantity)
        success,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    final _that = this;
    switch (_that) {
      case Loading():
        return loading();
      case Success():
        return success(_that.dish, _that.selectedSize, _that.selectedToppings,
            _that.note, _that.quantity);
      case Empty():
        return empty();
      case Error():
        return error(_that.message);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Dish dish,
            PortionSize? selectedSize,
            List<CustomizationOption> selectedToppings,
            String note,
            int quantity)?
        success,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case Loading() when loading != null:
        return loading();
      case Success() when success != null:
        return success(_that.dish, _that.selectedSize, _that.selectedToppings,
            _that.note, _that.quantity);
      case Empty() when empty != null:
        return empty();
      case Error() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Loading implements DishListState {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DishListState.loading()';
  }
}

/// @nodoc

class Success implements DishListState {
  const Success(
      {required this.dish,
      this.selectedSize,
      final List<CustomizationOption> selectedToppings = const [],
      this.note = '',
      this.quantity = 1})
      : _selectedToppings = selectedToppings;

  final Dish dish;
  final PortionSize? selectedSize;
  final List<CustomizationOption> _selectedToppings;
  @JsonKey()
  List<CustomizationOption> get selectedToppings {
    if (_selectedToppings is EqualUnmodifiableListView)
      return _selectedToppings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedToppings);
  }

  @JsonKey()
  final String note;
  @JsonKey()
  final int quantity;

  /// Create a copy of DishListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success &&
            (identical(other.dish, dish) || other.dish == dish) &&
            (identical(other.selectedSize, selectedSize) ||
                other.selectedSize == selectedSize) &&
            const DeepCollectionEquality()
                .equals(other._selectedToppings, _selectedToppings) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dish, selectedSize,
      const DeepCollectionEquality().hash(_selectedToppings), note, quantity);

  @override
  String toString() {
    return 'DishListState.success(dish: $dish, selectedSize: $selectedSize, selectedToppings: $selectedToppings, note: $note, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res>
    implements $DishListStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) =
      _$SuccessCopyWithImpl;
  @useResult
  $Res call(
      {Dish dish,
      PortionSize? selectedSize,
      List<CustomizationOption> selectedToppings,
      String note,
      int quantity});

  $DishCopyWith<$Res> get dish;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

  /// Create a copy of DishListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dish = null,
    Object? selectedSize = freezed,
    Object? selectedToppings = null,
    Object? note = null,
    Object? quantity = null,
  }) {
    return _then(Success(
      dish: null == dish
          ? _self.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
      selectedSize: freezed == selectedSize
          ? _self.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as PortionSize?,
      selectedToppings: null == selectedToppings
          ? _self._selectedToppings
          : selectedToppings // ignore: cast_nullable_to_non_nullable
              as List<CustomizationOption>,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of DishListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DishCopyWith<$Res> get dish {
    return $DishCopyWith<$Res>(_self.dish, (value) {
      return _then(_self.copyWith(dish: value));
    });
  }
}

/// @nodoc

class Empty implements DishListState {
  const Empty();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DishListState.empty()';
  }
}

/// @nodoc

class Error implements DishListState {
  const Error({required this.message});

  final String message;

  /// Create a copy of DishListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'DishListState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res>
    implements $DishListStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) =
      _$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

  /// Create a copy of DishListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(Error(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
