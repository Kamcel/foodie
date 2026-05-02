// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnboardingPage {
// F -- Fields
  String get id;
  String get animationPath;
  String get title;
  String get subTitle;

  /// Create a copy of OnboardingPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnboardingPageCopyWith<OnboardingPage> get copyWith =>
      _$OnboardingPageCopyWithImpl<OnboardingPage>(
          this as OnboardingPage, _$identity);

  /// Serializes this OnboardingPage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnboardingPage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.animationPath, animationPath) ||
                other.animationPath == animationPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, animationPath, title, subTitle);

  @override
  String toString() {
    return 'OnboardingPage(id: $id, animationPath: $animationPath, title: $title, subTitle: $subTitle)';
  }
}

/// @nodoc
abstract mixin class $OnboardingPageCopyWith<$Res> {
  factory $OnboardingPageCopyWith(
          OnboardingPage value, $Res Function(OnboardingPage) _then) =
      _$OnboardingPageCopyWithImpl;
  @useResult
  $Res call({String id, String animationPath, String title, String subTitle});
}

/// @nodoc
class _$OnboardingPageCopyWithImpl<$Res>
    implements $OnboardingPageCopyWith<$Res> {
  _$OnboardingPageCopyWithImpl(this._self, this._then);

  final OnboardingPage _self;
  final $Res Function(OnboardingPage) _then;

  /// Create a copy of OnboardingPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? animationPath = null,
    Object? title = null,
    Object? subTitle = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      animationPath: null == animationPath
          ? _self.animationPath
          : animationPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _self.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [OnboardingPage].
extension OnboardingPagePatterns on OnboardingPage {
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
    TResult Function(_OnboardingPage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OnboardingPage() when $default != null:
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
    TResult Function(_OnboardingPage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OnboardingPage():
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
    TResult? Function(_OnboardingPage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OnboardingPage() when $default != null:
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
            String id, String animationPath, String title, String subTitle)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OnboardingPage() when $default != null:
        return $default(
            _that.id, _that.animationPath, _that.title, _that.subTitle);
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
            String id, String animationPath, String title, String subTitle)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OnboardingPage():
        return $default(
            _that.id, _that.animationPath, _that.title, _that.subTitle);
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
            String id, String animationPath, String title, String subTitle)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OnboardingPage() when $default != null:
        return $default(
            _that.id, _that.animationPath, _that.title, _that.subTitle);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OnboardingPage extends OnboardingPage {
  const _OnboardingPage(
      {required this.id,
      required this.animationPath,
      required this.title,
      required this.subTitle})
      : super._();
  factory _OnboardingPage.fromJson(Map<String, dynamic> json) =>
      _$OnboardingPageFromJson(json);

// F -- Fields
  @override
  final String id;
  @override
  final String animationPath;
  @override
  final String title;
  @override
  final String subTitle;

  /// Create a copy of OnboardingPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnboardingPageCopyWith<_OnboardingPage> get copyWith =>
      __$OnboardingPageCopyWithImpl<_OnboardingPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OnboardingPageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnboardingPage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.animationPath, animationPath) ||
                other.animationPath == animationPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, animationPath, title, subTitle);

  @override
  String toString() {
    return 'OnboardingPage(id: $id, animationPath: $animationPath, title: $title, subTitle: $subTitle)';
  }
}

/// @nodoc
abstract mixin class _$OnboardingPageCopyWith<$Res>
    implements $OnboardingPageCopyWith<$Res> {
  factory _$OnboardingPageCopyWith(
          _OnboardingPage value, $Res Function(_OnboardingPage) _then) =
      __$OnboardingPageCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String animationPath, String title, String subTitle});
}

/// @nodoc
class __$OnboardingPageCopyWithImpl<$Res>
    implements _$OnboardingPageCopyWith<$Res> {
  __$OnboardingPageCopyWithImpl(this._self, this._then);

  final _OnboardingPage _self;
  final $Res Function(_OnboardingPage) _then;

  /// Create a copy of OnboardingPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? animationPath = null,
    Object? title = null,
    Object? subTitle = null,
  }) {
    return _then(_OnboardingPage(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      animationPath: null == animationPath
          ? _self.animationPath
          : animationPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _self.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
