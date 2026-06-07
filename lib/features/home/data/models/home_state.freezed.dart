// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState()';
  }
}

/// @nodoc
class $HomeStateCopyWith<$Res> {
  $HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}

/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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
            List<Restaurant> featuredRestaurants,
            List<Restaurant> trendingRestaurants,
            List<CuisineType> popularCuisines,
            CuisineType? selectedCuisine)?
        success,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success(_that.featuredRestaurants, _that.trendingRestaurants,
            _that.popularCuisines, _that.selectedCuisine);
      case _Empty() when empty != null:
        return empty();
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
            List<Restaurant> featuredRestaurants,
            List<Restaurant> trendingRestaurants,
            List<CuisineType> popularCuisines,
            CuisineType? selectedCuisine)
        success,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Loading():
        return loading();
      case _Success():
        return success(_that.featuredRestaurants, _that.trendingRestaurants,
            _that.popularCuisines, _that.selectedCuisine);
      case _Empty():
        return empty();
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
            List<Restaurant> featuredRestaurants,
            List<Restaurant> trendingRestaurants,
            List<CuisineType> popularCuisines,
            CuisineType? selectedCuisine)?
        success,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success(_that.featuredRestaurants, _that.trendingRestaurants,
            _that.popularCuisines, _that.selectedCuisine);
      case _Empty() when empty != null:
        return empty();
      case _Error() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Loading implements HomeState {
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
    return 'HomeState.loading()';
  }
}

/// @nodoc

class _Success implements HomeState {
  const _Success(
      {required final List<Restaurant> featuredRestaurants,
      required final List<Restaurant> trendingRestaurants,
      required final List<CuisineType> popularCuisines,
      required this.selectedCuisine})
      : _featuredRestaurants = featuredRestaurants,
        _trendingRestaurants = trendingRestaurants,
        _popularCuisines = popularCuisines;

  final List<Restaurant> _featuredRestaurants;
  List<Restaurant> get featuredRestaurants {
    if (_featuredRestaurants is EqualUnmodifiableListView)
      return _featuredRestaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredRestaurants);
  }

  final List<Restaurant> _trendingRestaurants;
  List<Restaurant> get trendingRestaurants {
    if (_trendingRestaurants is EqualUnmodifiableListView)
      return _trendingRestaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingRestaurants);
  }

  final List<CuisineType> _popularCuisines;
  List<CuisineType> get popularCuisines {
    if (_popularCuisines is EqualUnmodifiableListView) return _popularCuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularCuisines);
  }

  final CuisineType? selectedCuisine;

  /// Create a copy of HomeState
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
                .equals(other._featuredRestaurants, _featuredRestaurants) &&
            const DeepCollectionEquality()
                .equals(other._trendingRestaurants, _trendingRestaurants) &&
            const DeepCollectionEquality()
                .equals(other._popularCuisines, _popularCuisines) &&
            (identical(other.selectedCuisine, selectedCuisine) ||
                other.selectedCuisine == selectedCuisine));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_featuredRestaurants),
      const DeepCollectionEquality().hash(_trendingRestaurants),
      const DeepCollectionEquality().hash(_popularCuisines),
      selectedCuisine);

  @override
  String toString() {
    return 'HomeState.success(featuredRestaurants: $featuredRestaurants, trendingRestaurants: $trendingRestaurants, popularCuisines: $popularCuisines, selectedCuisine: $selectedCuisine)';
  }
}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) =
      __$SuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<Restaurant> featuredRestaurants,
      List<Restaurant> trendingRestaurants,
      List<CuisineType> popularCuisines,
      CuisineType? selectedCuisine});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? featuredRestaurants = null,
    Object? trendingRestaurants = null,
    Object? popularCuisines = null,
    Object? selectedCuisine = freezed,
  }) {
    return _then(_Success(
      featuredRestaurants: null == featuredRestaurants
          ? _self._featuredRestaurants
          : featuredRestaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
      trendingRestaurants: null == trendingRestaurants
          ? _self._trendingRestaurants
          : trendingRestaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
      popularCuisines: null == popularCuisines
          ? _self._popularCuisines
          : popularCuisines // ignore: cast_nullable_to_non_nullable
              as List<CuisineType>,
      selectedCuisine: freezed == selectedCuisine
          ? _self.selectedCuisine
          : selectedCuisine // ignore: cast_nullable_to_non_nullable
              as CuisineType?,
    ));
  }
}

/// @nodoc

class _Empty implements HomeState {
  const _Empty();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.empty()';
  }
}

/// @nodoc

class _Error implements HomeState {
  const _Error({required this.message});

  final String message;

  /// Create a copy of HomeState
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
    return 'HomeState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
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

  /// Create a copy of HomeState
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
