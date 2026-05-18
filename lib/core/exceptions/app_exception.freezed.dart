// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppException {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppException()';
  }
}

/// @nodoc
class $AppExceptionCopyWith<$Res> {
  $AppExceptionCopyWith(AppException _, $Res Function(AppException) __);
}

/// Adds pattern-matching-related methods to [AppException].
extension AppExceptionPatterns on AppException {
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
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Conflict value)? conflict,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Validation value)? validation,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_TooManyRequest value)? tooManyRequests,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Unauthorized() when unauthorized != null:
        return unauthorized(_that);
      case _NotFound() when notFound != null:
        return notFound(_that);
      case _Conflict() when conflict != null:
        return conflict(_that);
      case _BadRequest() when badRequest != null:
        return badRequest(_that);
      case _Validation() when validation != null:
        return validation(_that);
      case _ServerError() when serverError != null:
        return serverError(_that);
      case _NoInternet() when noInternet != null:
        return noInternet(_that);
      case _Unknown() when unknown != null:
        return unknown(_that);
      case _TooManyRequest() when tooManyRequests != null:
        return tooManyRequests(_that);
      case _Forbidden() when forbidden != null:
        return forbidden(_that);
      case _ConnectionTimeout() when connectionTimeout != null:
        return connectionTimeout(_that);
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
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Conflict value) conflict,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Validation value) validation,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_TooManyRequest value) tooManyRequests,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    final _that = this;
    switch (_that) {
      case _Unauthorized():
        return unauthorized(_that);
      case _NotFound():
        return notFound(_that);
      case _Conflict():
        return conflict(_that);
      case _BadRequest():
        return badRequest(_that);
      case _Validation():
        return validation(_that);
      case _ServerError():
        return serverError(_that);
      case _NoInternet():
        return noInternet(_that);
      case _Unknown():
        return unknown(_that);
      case _TooManyRequest():
        return tooManyRequests(_that);
      case _Forbidden():
        return forbidden(_that);
      case _ConnectionTimeout():
        return connectionTimeout(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Conflict value)? conflict,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Validation value)? validation,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_TooManyRequest value)? tooManyRequests,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    final _that = this;
    switch (_that) {
      case _Unauthorized() when unauthorized != null:
        return unauthorized(_that);
      case _NotFound() when notFound != null:
        return notFound(_that);
      case _Conflict() when conflict != null:
        return conflict(_that);
      case _BadRequest() when badRequest != null:
        return badRequest(_that);
      case _Validation() when validation != null:
        return validation(_that);
      case _ServerError() when serverError != null:
        return serverError(_that);
      case _NoInternet() when noInternet != null:
        return noInternet(_that);
      case _Unknown() when unknown != null:
        return unknown(_that);
      case _TooManyRequest() when tooManyRequests != null:
        return tooManyRequests(_that);
      case _Forbidden() when forbidden != null:
        return forbidden(_that);
      case _ConnectionTimeout() when connectionTimeout != null:
        return connectionTimeout(_that);
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
    TResult Function()? unauthorized,
    TResult Function()? notFound,
    TResult Function(String message)? conflict,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? validation,
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function(String message)? unknown,
    TResult Function()? tooManyRequests,
    TResult Function()? forbidden,
    TResult Function()? connectionTimeout,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Unauthorized() when unauthorized != null:
        return unauthorized();
      case _NotFound() when notFound != null:
        return notFound();
      case _Conflict() when conflict != null:
        return conflict(_that.message);
      case _BadRequest() when badRequest != null:
        return badRequest(_that.message);
      case _Validation() when validation != null:
        return validation(_that.message);
      case _ServerError() when serverError != null:
        return serverError();
      case _NoInternet() when noInternet != null:
        return noInternet();
      case _Unknown() when unknown != null:
        return unknown(_that.message);
      case _TooManyRequest() when tooManyRequests != null:
        return tooManyRequests();
      case _Forbidden() when forbidden != null:
        return forbidden();
      case _ConnectionTimeout() when connectionTimeout != null:
        return connectionTimeout();
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
    required TResult Function() unauthorized,
    required TResult Function() notFound,
    required TResult Function(String message) conflict,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) validation,
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function(String message) unknown,
    required TResult Function() tooManyRequests,
    required TResult Function() forbidden,
    required TResult Function() connectionTimeout,
  }) {
    final _that = this;
    switch (_that) {
      case _Unauthorized():
        return unauthorized();
      case _NotFound():
        return notFound();
      case _Conflict():
        return conflict(_that.message);
      case _BadRequest():
        return badRequest(_that.message);
      case _Validation():
        return validation(_that.message);
      case _ServerError():
        return serverError();
      case _NoInternet():
        return noInternet();
      case _Unknown():
        return unknown(_that.message);
      case _TooManyRequest():
        return tooManyRequests();
      case _Forbidden():
        return forbidden();
      case _ConnectionTimeout():
        return connectionTimeout();
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? notFound,
    TResult? Function(String message)? conflict,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? validation,
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function(String message)? unknown,
    TResult? Function()? tooManyRequests,
    TResult? Function()? forbidden,
    TResult? Function()? connectionTimeout,
  }) {
    final _that = this;
    switch (_that) {
      case _Unauthorized() when unauthorized != null:
        return unauthorized();
      case _NotFound() when notFound != null:
        return notFound();
      case _Conflict() when conflict != null:
        return conflict(_that.message);
      case _BadRequest() when badRequest != null:
        return badRequest(_that.message);
      case _Validation() when validation != null:
        return validation(_that.message);
      case _ServerError() when serverError != null:
        return serverError();
      case _NoInternet() when noInternet != null:
        return noInternet();
      case _Unknown() when unknown != null:
        return unknown(_that.message);
      case _TooManyRequest() when tooManyRequests != null:
        return tooManyRequests();
      case _Forbidden() when forbidden != null:
        return forbidden();
      case _ConnectionTimeout() when connectionTimeout != null:
        return connectionTimeout();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Unauthorized extends AppException {
  const _Unauthorized() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppException.unauthorized()';
  }
}

/// @nodoc

class _NotFound extends AppException {
  const _NotFound() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppException.notFound()';
  }
}

/// @nodoc

class _Conflict extends AppException {
  const _Conflict(this.message) : super._();

  final String message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConflictCopyWith<_Conflict> get copyWith =>
      __$ConflictCopyWithImpl<_Conflict>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Conflict &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AppException.conflict(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ConflictCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$ConflictCopyWith(_Conflict value, $Res Function(_Conflict) _then) =
      __$ConflictCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ConflictCopyWithImpl<$Res> implements _$ConflictCopyWith<$Res> {
  __$ConflictCopyWithImpl(this._self, this._then);

  final _Conflict _self;
  final $Res Function(_Conflict) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Conflict(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _BadRequest extends AppException {
  const _BadRequest(this.message) : super._();

  final String message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BadRequestCopyWith<_BadRequest> get copyWith =>
      __$BadRequestCopyWithImpl<_BadRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BadRequest &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AppException.badRequest(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$BadRequestCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$BadRequestCopyWith(
          _BadRequest value, $Res Function(_BadRequest) _then) =
      __$BadRequestCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$BadRequestCopyWithImpl<$Res> implements _$BadRequestCopyWith<$Res> {
  __$BadRequestCopyWithImpl(this._self, this._then);

  final _BadRequest _self;
  final $Res Function(_BadRequest) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_BadRequest(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Validation extends AppException {
  const _Validation(this.message) : super._();

  final String message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationCopyWith<_Validation> get copyWith =>
      __$ValidationCopyWithImpl<_Validation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Validation &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AppException.validation(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ValidationCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$ValidationCopyWith(
          _Validation value, $Res Function(_Validation) _then) =
      __$ValidationCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ValidationCopyWithImpl<$Res> implements _$ValidationCopyWith<$Res> {
  __$ValidationCopyWithImpl(this._self, this._then);

  final _Validation _self;
  final $Res Function(_Validation) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Validation(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ServerError extends AppException {
  const _ServerError() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppException.serverError()';
  }
}

/// @nodoc

class _NoInternet extends AppException {
  const _NoInternet() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppException.noInternet()';
  }
}

/// @nodoc

class _Unknown extends AppException {
  const _Unknown(this.message) : super._();

  final String message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnknownCopyWith<_Unknown> get copyWith =>
      __$UnknownCopyWithImpl<_Unknown>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unknown &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AppException.unknown(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$UnknownCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) _then) =
      __$UnknownCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$UnknownCopyWithImpl<$Res> implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(this._self, this._then);

  final _Unknown _self;
  final $Res Function(_Unknown) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Unknown(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _TooManyRequest extends AppException {
  const _TooManyRequest() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TooManyRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppException.tooManyRequests()';
  }
}

/// @nodoc

class _Forbidden extends AppException {
  const _Forbidden() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Forbidden);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppException.forbidden()';
  }
}

/// @nodoc

class _ConnectionTimeout extends AppException {
  const _ConnectionTimeout() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConnectionTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppException.connectionTimeout()';
  }
}

// dart format on
