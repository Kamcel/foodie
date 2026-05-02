// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_promotion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantPromotion {
// F -- Fields
  String get id;
  String get title;
  String get description;
  PromotionType get type;
  double? get discountValue;
  double? get minimumOrderAmount;
  String? get promoCode;
  DateTime get validFrom;
  DateTime get validUntil;
  bool get isAutoApplied;
  List<String> get applicableItemIds;
  List<String> get excludedItemIds;

  /// Create a copy of RestaurantPromotion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestaurantPromotionCopyWith<RestaurantPromotion> get copyWith =>
      _$RestaurantPromotionCopyWithImpl<RestaurantPromotion>(
          this as RestaurantPromotion, _$identity);

  /// Serializes this RestaurantPromotion to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestaurantPromotion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.minimumOrderAmount, minimumOrderAmount) ||
                other.minimumOrderAmount == minimumOrderAmount) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.isAutoApplied, isAutoApplied) ||
                other.isAutoApplied == isAutoApplied) &&
            const DeepCollectionEquality()
                .equals(other.applicableItemIds, applicableItemIds) &&
            const DeepCollectionEquality()
                .equals(other.excludedItemIds, excludedItemIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      discountValue,
      minimumOrderAmount,
      promoCode,
      validFrom,
      validUntil,
      isAutoApplied,
      const DeepCollectionEquality().hash(applicableItemIds),
      const DeepCollectionEquality().hash(excludedItemIds));

  @override
  String toString() {
    return 'RestaurantPromotion(id: $id, title: $title, description: $description, type: $type, discountValue: $discountValue, minimumOrderAmount: $minimumOrderAmount, promoCode: $promoCode, validFrom: $validFrom, validUntil: $validUntil, isAutoApplied: $isAutoApplied, applicableItemIds: $applicableItemIds, excludedItemIds: $excludedItemIds)';
  }
}

/// @nodoc
abstract mixin class $RestaurantPromotionCopyWith<$Res> {
  factory $RestaurantPromotionCopyWith(
          RestaurantPromotion value, $Res Function(RestaurantPromotion) _then) =
      _$RestaurantPromotionCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      PromotionType type,
      double? discountValue,
      double? minimumOrderAmount,
      String? promoCode,
      DateTime validFrom,
      DateTime validUntil,
      bool isAutoApplied,
      List<String> applicableItemIds,
      List<String> excludedItemIds});
}

/// @nodoc
class _$RestaurantPromotionCopyWithImpl<$Res>
    implements $RestaurantPromotionCopyWith<$Res> {
  _$RestaurantPromotionCopyWithImpl(this._self, this._then);

  final RestaurantPromotion _self;
  final $Res Function(RestaurantPromotion) _then;

  /// Create a copy of RestaurantPromotion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? discountValue = freezed,
    Object? minimumOrderAmount = freezed,
    Object? promoCode = freezed,
    Object? validFrom = null,
    Object? validUntil = null,
    Object? isAutoApplied = null,
    Object? applicableItemIds = null,
    Object? excludedItemIds = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PromotionType,
      discountValue: freezed == discountValue
          ? _self.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as double?,
      minimumOrderAmount: freezed == minimumOrderAmount
          ? _self.minimumOrderAmount
          : minimumOrderAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      promoCode: freezed == promoCode
          ? _self.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: null == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _self.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAutoApplied: null == isAutoApplied
          ? _self.isAutoApplied
          : isAutoApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      applicableItemIds: null == applicableItemIds
          ? _self.applicableItemIds
          : applicableItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excludedItemIds: null == excludedItemIds
          ? _self.excludedItemIds
          : excludedItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [RestaurantPromotion].
extension RestaurantPromotionPatterns on RestaurantPromotion {
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
    TResult Function(_RestaurantPromotion value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantPromotion() when $default != null:
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
    TResult Function(_RestaurantPromotion value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantPromotion():
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
    TResult? Function(_RestaurantPromotion value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantPromotion() when $default != null:
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
            String title,
            String description,
            PromotionType type,
            double? discountValue,
            double? minimumOrderAmount,
            String? promoCode,
            DateTime validFrom,
            DateTime validUntil,
            bool isAutoApplied,
            List<String> applicableItemIds,
            List<String> excludedItemIds)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RestaurantPromotion() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.type,
            _that.discountValue,
            _that.minimumOrderAmount,
            _that.promoCode,
            _that.validFrom,
            _that.validUntil,
            _that.isAutoApplied,
            _that.applicableItemIds,
            _that.excludedItemIds);
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
            String title,
            String description,
            PromotionType type,
            double? discountValue,
            double? minimumOrderAmount,
            String? promoCode,
            DateTime validFrom,
            DateTime validUntil,
            bool isAutoApplied,
            List<String> applicableItemIds,
            List<String> excludedItemIds)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantPromotion():
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.type,
            _that.discountValue,
            _that.minimumOrderAmount,
            _that.promoCode,
            _that.validFrom,
            _that.validUntil,
            _that.isAutoApplied,
            _that.applicableItemIds,
            _that.excludedItemIds);
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
            String title,
            String description,
            PromotionType type,
            double? discountValue,
            double? minimumOrderAmount,
            String? promoCode,
            DateTime validFrom,
            DateTime validUntil,
            bool isAutoApplied,
            List<String> applicableItemIds,
            List<String> excludedItemIds)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RestaurantPromotion() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.type,
            _that.discountValue,
            _that.minimumOrderAmount,
            _that.promoCode,
            _that.validFrom,
            _that.validUntil,
            _that.isAutoApplied,
            _that.applicableItemIds,
            _that.excludedItemIds);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RestaurantPromotion extends RestaurantPromotion {
  const _RestaurantPromotion(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      this.discountValue,
      this.minimumOrderAmount,
      this.promoCode,
      required this.validFrom,
      required this.validUntil,
      this.isAutoApplied = false,
      final List<String> applicableItemIds = const [],
      final List<String> excludedItemIds = const []})
      : _applicableItemIds = applicableItemIds,
        _excludedItemIds = excludedItemIds,
        super._();
  factory _RestaurantPromotion.fromJson(Map<String, dynamic> json) =>
      _$RestaurantPromotionFromJson(json);

// F -- Fields
  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final PromotionType type;
  @override
  final double? discountValue;
  @override
  final double? minimumOrderAmount;
  @override
  final String? promoCode;
  @override
  final DateTime validFrom;
  @override
  final DateTime validUntil;
  @override
  @JsonKey()
  final bool isAutoApplied;
  final List<String> _applicableItemIds;
  @override
  @JsonKey()
  List<String> get applicableItemIds {
    if (_applicableItemIds is EqualUnmodifiableListView)
      return _applicableItemIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_applicableItemIds);
  }

  final List<String> _excludedItemIds;
  @override
  @JsonKey()
  List<String> get excludedItemIds {
    if (_excludedItemIds is EqualUnmodifiableListView) return _excludedItemIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_excludedItemIds);
  }

  /// Create a copy of RestaurantPromotion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RestaurantPromotionCopyWith<_RestaurantPromotion> get copyWith =>
      __$RestaurantPromotionCopyWithImpl<_RestaurantPromotion>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RestaurantPromotionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestaurantPromotion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.minimumOrderAmount, minimumOrderAmount) ||
                other.minimumOrderAmount == minimumOrderAmount) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.isAutoApplied, isAutoApplied) ||
                other.isAutoApplied == isAutoApplied) &&
            const DeepCollectionEquality()
                .equals(other._applicableItemIds, _applicableItemIds) &&
            const DeepCollectionEquality()
                .equals(other._excludedItemIds, _excludedItemIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      discountValue,
      minimumOrderAmount,
      promoCode,
      validFrom,
      validUntil,
      isAutoApplied,
      const DeepCollectionEquality().hash(_applicableItemIds),
      const DeepCollectionEquality().hash(_excludedItemIds));

  @override
  String toString() {
    return 'RestaurantPromotion(id: $id, title: $title, description: $description, type: $type, discountValue: $discountValue, minimumOrderAmount: $minimumOrderAmount, promoCode: $promoCode, validFrom: $validFrom, validUntil: $validUntil, isAutoApplied: $isAutoApplied, applicableItemIds: $applicableItemIds, excludedItemIds: $excludedItemIds)';
  }
}

/// @nodoc
abstract mixin class _$RestaurantPromotionCopyWith<$Res>
    implements $RestaurantPromotionCopyWith<$Res> {
  factory _$RestaurantPromotionCopyWith(_RestaurantPromotion value,
          $Res Function(_RestaurantPromotion) _then) =
      __$RestaurantPromotionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      PromotionType type,
      double? discountValue,
      double? minimumOrderAmount,
      String? promoCode,
      DateTime validFrom,
      DateTime validUntil,
      bool isAutoApplied,
      List<String> applicableItemIds,
      List<String> excludedItemIds});
}

/// @nodoc
class __$RestaurantPromotionCopyWithImpl<$Res>
    implements _$RestaurantPromotionCopyWith<$Res> {
  __$RestaurantPromotionCopyWithImpl(this._self, this._then);

  final _RestaurantPromotion _self;
  final $Res Function(_RestaurantPromotion) _then;

  /// Create a copy of RestaurantPromotion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? discountValue = freezed,
    Object? minimumOrderAmount = freezed,
    Object? promoCode = freezed,
    Object? validFrom = null,
    Object? validUntil = null,
    Object? isAutoApplied = null,
    Object? applicableItemIds = null,
    Object? excludedItemIds = null,
  }) {
    return _then(_RestaurantPromotion(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PromotionType,
      discountValue: freezed == discountValue
          ? _self.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as double?,
      minimumOrderAmount: freezed == minimumOrderAmount
          ? _self.minimumOrderAmount
          : minimumOrderAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      promoCode: freezed == promoCode
          ? _self.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: null == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _self.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAutoApplied: null == isAutoApplied
          ? _self.isAutoApplied
          : isAutoApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      applicableItemIds: null == applicableItemIds
          ? _self._applicableItemIds
          : applicableItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excludedItemIds: null == excludedItemIds
          ? _self._excludedItemIds
          : excludedItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
