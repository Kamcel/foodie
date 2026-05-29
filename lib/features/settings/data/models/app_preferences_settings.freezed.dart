// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_preferences_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppPreferencesSettings {
  bool get isDarkMode;
  bool get useBiometricAuth;
  String get languageCode;

  /// Create a copy of AppPreferencesSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppPreferencesSettingsCopyWith<AppPreferencesSettings> get copyWith =>
      _$AppPreferencesSettingsCopyWithImpl<AppPreferencesSettings>(
          this as AppPreferencesSettings, _$identity);

  /// Serializes this AppPreferencesSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppPreferencesSettings &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.useBiometricAuth, useBiometricAuth) ||
                other.useBiometricAuth == useBiometricAuth) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isDarkMode, useBiometricAuth, languageCode);

  @override
  String toString() {
    return 'AppPreferencesSettings(isDarkMode: $isDarkMode, useBiometricAuth: $useBiometricAuth, languageCode: $languageCode)';
  }
}

/// @nodoc
abstract mixin class $AppPreferencesSettingsCopyWith<$Res> {
  factory $AppPreferencesSettingsCopyWith(AppPreferencesSettings value,
          $Res Function(AppPreferencesSettings) _then) =
      _$AppPreferencesSettingsCopyWithImpl;
  @useResult
  $Res call({bool isDarkMode, bool useBiometricAuth, String languageCode});
}

/// @nodoc
class _$AppPreferencesSettingsCopyWithImpl<$Res>
    implements $AppPreferencesSettingsCopyWith<$Res> {
  _$AppPreferencesSettingsCopyWithImpl(this._self, this._then);

  final AppPreferencesSettings _self;
  final $Res Function(AppPreferencesSettings) _then;

  /// Create a copy of AppPreferencesSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
    Object? useBiometricAuth = null,
    Object? languageCode = null,
  }) {
    return _then(_self.copyWith(
      isDarkMode: null == isDarkMode
          ? _self.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      useBiometricAuth: null == useBiometricAuth
          ? _self.useBiometricAuth
          : useBiometricAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      languageCode: null == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppPreferencesSettings].
extension AppPreferencesSettingsPatterns on AppPreferencesSettings {
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
    TResult Function(_AppPreferencesSettings value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppPreferencesSettings() when $default != null:
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
    TResult Function(_AppPreferencesSettings value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppPreferencesSettings():
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
    TResult? Function(_AppPreferencesSettings value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppPreferencesSettings() when $default != null:
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
            bool isDarkMode, bool useBiometricAuth, String languageCode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppPreferencesSettings() when $default != null:
        return $default(
            _that.isDarkMode, _that.useBiometricAuth, _that.languageCode);
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
            bool isDarkMode, bool useBiometricAuth, String languageCode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppPreferencesSettings():
        return $default(
            _that.isDarkMode, _that.useBiometricAuth, _that.languageCode);
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
            bool isDarkMode, bool useBiometricAuth, String languageCode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppPreferencesSettings() when $default != null:
        return $default(
            _that.isDarkMode, _that.useBiometricAuth, _that.languageCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppPreferencesSettings implements AppPreferencesSettings {
  const _AppPreferencesSettings(
      {this.isDarkMode = false,
      this.useBiometricAuth = false,
      this.languageCode = 'en'});
  factory _AppPreferencesSettings.fromJson(Map<String, dynamic> json) =>
      _$AppPreferencesSettingsFromJson(json);

  @override
  @JsonKey()
  final bool isDarkMode;
  @override
  @JsonKey()
  final bool useBiometricAuth;
  @override
  @JsonKey()
  final String languageCode;

  /// Create a copy of AppPreferencesSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppPreferencesSettingsCopyWith<_AppPreferencesSettings> get copyWith =>
      __$AppPreferencesSettingsCopyWithImpl<_AppPreferencesSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppPreferencesSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppPreferencesSettings &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.useBiometricAuth, useBiometricAuth) ||
                other.useBiometricAuth == useBiometricAuth) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isDarkMode, useBiometricAuth, languageCode);

  @override
  String toString() {
    return 'AppPreferencesSettings(isDarkMode: $isDarkMode, useBiometricAuth: $useBiometricAuth, languageCode: $languageCode)';
  }
}

/// @nodoc
abstract mixin class _$AppPreferencesSettingsCopyWith<$Res>
    implements $AppPreferencesSettingsCopyWith<$Res> {
  factory _$AppPreferencesSettingsCopyWith(_AppPreferencesSettings value,
          $Res Function(_AppPreferencesSettings) _then) =
      __$AppPreferencesSettingsCopyWithImpl;
  @override
  @useResult
  $Res call({bool isDarkMode, bool useBiometricAuth, String languageCode});
}

/// @nodoc
class __$AppPreferencesSettingsCopyWithImpl<$Res>
    implements _$AppPreferencesSettingsCopyWith<$Res> {
  __$AppPreferencesSettingsCopyWithImpl(this._self, this._then);

  final _AppPreferencesSettings _self;
  final $Res Function(_AppPreferencesSettings) _then;

  /// Create a copy of AppPreferencesSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isDarkMode = null,
    Object? useBiometricAuth = null,
    Object? languageCode = null,
  }) {
    return _then(_AppPreferencesSettings(
      isDarkMode: null == isDarkMode
          ? _self.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      useBiometricAuth: null == useBiometricAuth
          ? _self.useBiometricAuth
          : useBiometricAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      languageCode: null == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
