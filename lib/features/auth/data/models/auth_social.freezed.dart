// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_social.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthSocial {
// F -- Fields
  AuthProvider get provider;
  String get token;
  String? get idToken;

  /// Create a copy of AuthSocial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthSocialCopyWith<AuthSocial> get copyWith =>
      _$AuthSocialCopyWithImpl<AuthSocial>(this as AuthSocial, _$identity);

  /// Serializes this AuthSocial to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthSocial &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, provider, token, idToken);

  @override
  String toString() {
    return 'AuthSocial(provider: $provider, token: $token, idToken: $idToken)';
  }
}

/// @nodoc
abstract mixin class $AuthSocialCopyWith<$Res> {
  factory $AuthSocialCopyWith(
          AuthSocial value, $Res Function(AuthSocial) _then) =
      _$AuthSocialCopyWithImpl;
  @useResult
  $Res call({AuthProvider provider, String token, String? idToken});
}

/// @nodoc
class _$AuthSocialCopyWithImpl<$Res> implements $AuthSocialCopyWith<$Res> {
  _$AuthSocialCopyWithImpl(this._self, this._then);

  final AuthSocial _self;
  final $Res Function(AuthSocial) _then;

  /// Create a copy of AuthSocial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? token = null,
    Object? idToken = freezed,
  }) {
    return _then(_self.copyWith(
      provider: null == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: freezed == idToken
          ? _self.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthSocial].
extension AuthSocialPatterns on AuthSocial {
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
    TResult Function(_AuthSocial value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthSocial() when $default != null:
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
    TResult Function(_AuthSocial value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthSocial():
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
    TResult? Function(_AuthSocial value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthSocial() when $default != null:
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
    TResult Function(AuthProvider provider, String token, String? idToken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthSocial() when $default != null:
        return $default(_that.provider, _that.token, _that.idToken);
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
    TResult Function(AuthProvider provider, String token, String? idToken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthSocial():
        return $default(_that.provider, _that.token, _that.idToken);
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
    TResult? Function(AuthProvider provider, String token, String? idToken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthSocial() when $default != null:
        return $default(_that.provider, _that.token, _that.idToken);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AuthSocial extends AuthSocial {
  const _AuthSocial({required this.provider, required this.token, this.idToken})
      : super._();
  factory _AuthSocial.fromJson(Map<String, dynamic> json) =>
      _$AuthSocialFromJson(json);

// F -- Fields
  @override
  final AuthProvider provider;
  @override
  final String token;
  @override
  final String? idToken;

  /// Create a copy of AuthSocial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthSocialCopyWith<_AuthSocial> get copyWith =>
      __$AuthSocialCopyWithImpl<_AuthSocial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthSocialToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthSocial &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, provider, token, idToken);

  @override
  String toString() {
    return 'AuthSocial(provider: $provider, token: $token, idToken: $idToken)';
  }
}

/// @nodoc
abstract mixin class _$AuthSocialCopyWith<$Res>
    implements $AuthSocialCopyWith<$Res> {
  factory _$AuthSocialCopyWith(
          _AuthSocial value, $Res Function(_AuthSocial) _then) =
      __$AuthSocialCopyWithImpl;
  @override
  @useResult
  $Res call({AuthProvider provider, String token, String? idToken});
}

/// @nodoc
class __$AuthSocialCopyWithImpl<$Res> implements _$AuthSocialCopyWith<$Res> {
  __$AuthSocialCopyWithImpl(this._self, this._then);

  final _AuthSocial _self;
  final $Res Function(_AuthSocial) _then;

  /// Create a copy of AuthSocial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? provider = null,
    Object? token = null,
    Object? idToken = freezed,
  }) {
    return _then(_AuthSocial(
      provider: null == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: freezed == idToken
          ? _self.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
