// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantScreenState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RestaurantScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RestaurantScreenState()';
  }
}

/// @nodoc
class $RestaurantScreenStateCopyWith<$Res> {
  $RestaurantScreenStateCopyWith(
      RestaurantScreenState _, $Res Function(RestaurantScreenState) __);
}

/// Adds pattern-matching-related methods to [RestaurantScreenState].
extension RestaurantScreenStatePatterns on RestaurantScreenState {
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
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Loading() when loading != null:
        return loading(_that);
      case _Success() when success != null:
        return success(_that);
      case _Empty() when empty != null:
        return empty(_that);
      case _Error() when error != null:
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Loading():
        return loading(_that);
      case _Success():
        return success(_that);
      case _Empty():
        return empty(_that);
      case _Error():
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
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Loading() when loading != null:
        return loading(_that);
      case _Success() when success != null:
        return success(_that);
      case _Empty() when empty != null:
        return empty(_that);
      case _Error() when error != null:
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
            List<Restaurant> restaurants,
            CuisineType? selectedCusineType,
            Set<RefinementType> selectedRefinement,
            String searchResult,
            int restaurantCount)?
        success,
    TResult Function(CuisineType? selectedCusineType,
            Set<RefinementType> selectedRefinement, String searchResult)?
        empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success(
            _that.restaurants,
            _that.selectedCusineType,
            _that.selectedRefinement,
            _that.searchResult,
            _that.restaurantCount);
      case _Empty() when empty != null:
        return empty(_that.selectedCusineType, _that.selectedRefinement,
            _that.searchResult);
      case _Error() when error != null:
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
            List<Restaurant> restaurants,
            CuisineType? selectedCusineType,
            Set<RefinementType> selectedRefinement,
            String searchResult,
            int restaurantCount)
        success,
    required TResult Function(CuisineType? selectedCusineType,
            Set<RefinementType> selectedRefinement, String searchResult)
        empty,
    required TResult Function(String message) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Loading():
        return loading();
      case _Success():
        return success(
            _that.restaurants,
            _that.selectedCusineType,
            _that.selectedRefinement,
            _that.searchResult,
            _that.restaurantCount);
      case _Empty():
        return empty(_that.selectedCusineType, _that.selectedRefinement,
            _that.searchResult);
      case _Error():
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
            List<Restaurant> restaurants,
            CuisineType? selectedCusineType,
            Set<RefinementType> selectedRefinement,
            String searchResult,
            int restaurantCount)?
        success,
    TResult? Function(CuisineType? selectedCusineType,
            Set<RefinementType> selectedRefinement, String searchResult)?
        empty,
    TResult? Function(String message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success(
            _that.restaurants,
            _that.selectedCusineType,
            _that.selectedRefinement,
            _that.searchResult,
            _that.restaurantCount);
      case _Empty() when empty != null:
        return empty(_that.selectedCusineType, _that.selectedRefinement,
            _that.searchResult);
      case _Error() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Loading implements RestaurantScreenState {
  const _Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RestaurantScreenState.loading()';
  }
}

/// @nodoc

class _Success implements RestaurantScreenState {
  const _Success(
      {required final List<Restaurant> restaurants,
      required this.selectedCusineType,
      required final Set<RefinementType> selectedRefinement,
      required this.searchResult,
      required this.restaurantCount})
      : _restaurants = restaurants,
        _selectedRefinement = selectedRefinement;

  final List<Restaurant> _restaurants;
  List<Restaurant> get restaurants {
    if (_restaurants is EqualUnmodifiableListView) return _restaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurants);
  }

  final CuisineType? selectedCusineType;
  final Set<RefinementType> _selectedRefinement;
  Set<RefinementType> get selectedRefinement {
    if (_selectedRefinement is EqualUnmodifiableSetView)
      return _selectedRefinement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedRefinement);
  }

  final String searchResult;
  final int restaurantCount;

  /// Create a copy of RestaurantScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants) &&
            (identical(other.selectedCusineType, selectedCusineType) ||
                other.selectedCusineType == selectedCusineType) &&
            const DeepCollectionEquality()
                .equals(other._selectedRefinement, _selectedRefinement) &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult) &&
            (identical(other.restaurantCount, restaurantCount) ||
                other.restaurantCount == restaurantCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_restaurants),
      selectedCusineType,
      const DeepCollectionEquality().hash(_selectedRefinement),
      searchResult,
      restaurantCount);

  @override
  String toString() {
    return 'RestaurantScreenState.success(restaurants: $restaurants, selectedCusineType: $selectedCusineType, selectedRefinement: $selectedRefinement, searchResult: $searchResult, restaurantCount: $restaurantCount)';
  }
}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res>
    implements $RestaurantScreenStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) =
      __$SuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<Restaurant> restaurants,
      CuisineType? selectedCusineType,
      Set<RefinementType> selectedRefinement,
      String searchResult,
      int restaurantCount});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

  /// Create a copy of RestaurantScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? restaurants = null,
    Object? selectedCusineType = freezed,
    Object? selectedRefinement = null,
    Object? searchResult = null,
    Object? restaurantCount = null,
  }) {
    return _then(_Success(
      restaurants: null == restaurants
          ? _self._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
      selectedCusineType: freezed == selectedCusineType
          ? _self.selectedCusineType
          : selectedCusineType // ignore: cast_nullable_to_non_nullable
              as CuisineType?,
      selectedRefinement: null == selectedRefinement
          ? _self._selectedRefinement
          : selectedRefinement // ignore: cast_nullable_to_non_nullable
              as Set<RefinementType>,
      searchResult: null == searchResult
          ? _self.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantCount: null == restaurantCount
          ? _self.restaurantCount
          : restaurantCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _Empty implements RestaurantScreenState {
  const _Empty(
      {required this.selectedCusineType,
      required final Set<RefinementType> selectedRefinement,
      required this.searchResult})
      : _selectedRefinement = selectedRefinement;

  final CuisineType? selectedCusineType;
  final Set<RefinementType> _selectedRefinement;
  Set<RefinementType> get selectedRefinement {
    if (_selectedRefinement is EqualUnmodifiableSetView)
      return _selectedRefinement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedRefinement);
  }

  final String searchResult;

  /// Create a copy of RestaurantScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Empty &&
            (identical(other.selectedCusineType, selectedCusineType) ||
                other.selectedCusineType == selectedCusineType) &&
            const DeepCollectionEquality()
                .equals(other._selectedRefinement, _selectedRefinement) &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCusineType,
      const DeepCollectionEquality().hash(_selectedRefinement), searchResult);

  @override
  String toString() {
    return 'RestaurantScreenState.empty(selectedCusineType: $selectedCusineType, selectedRefinement: $selectedRefinement, searchResult: $searchResult)';
  }
}

/// @nodoc
abstract mixin class _$EmptyCopyWith<$Res>
    implements $RestaurantScreenStateCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) _then) =
      __$EmptyCopyWithImpl;
  @useResult
  $Res call(
      {CuisineType? selectedCusineType,
      Set<RefinementType> selectedRefinement,
      String searchResult});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(this._self, this._then);

  final _Empty _self;
  final $Res Function(_Empty) _then;

  /// Create a copy of RestaurantScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedCusineType = freezed,
    Object? selectedRefinement = null,
    Object? searchResult = null,
  }) {
    return _then(_Empty(
      selectedCusineType: freezed == selectedCusineType
          ? _self.selectedCusineType
          : selectedCusineType // ignore: cast_nullable_to_non_nullable
              as CuisineType?,
      selectedRefinement: null == selectedRefinement
          ? _self._selectedRefinement
          : selectedRefinement // ignore: cast_nullable_to_non_nullable
              as Set<RefinementType>,
      searchResult: null == searchResult
          ? _self.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Error implements RestaurantScreenState {
  const _Error({required this.message});

  final String message;

  /// Create a copy of RestaurantScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'RestaurantScreenState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res>
    implements $RestaurantScreenStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) =
      __$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

  /// Create a copy of RestaurantScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Error(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
