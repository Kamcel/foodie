// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileState {
// F -- Fields
// Step 1
  String get name;
  String get userName;
  String get avatarPath; //Step 2
  String get phone;
  bool get whatsappUpdates; //Step 3
  LocationModel? get selectCountry;
  LocationModel? get selectState;
  LocationModel? get selectCity;
  String get street;
  String get orderDescription;
  bool get isHomeAddress; //Step 4
//@Default(enumName.value) enumName enumNameInLowercase
  List<DietaryPreference> get dietaryPreference;
  List<Allergy> get allergies;
  SpiceLevel? get spiceLevel; //Step 5
  String get workName;
  String get workState;
  String get zipCode;
  String get workAddress; //Step 6
  List<Cuisine> get cuisines;
  bool get orderUpdates;
  bool get dealsUpdate; //Standard
  bool get isLoading;
  bool get isSucess;
  String? get errorMessage;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      _$ProfileStateCopyWithImpl<ProfileState>(
          this as ProfileState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.whatsappUpdates, whatsappUpdates) ||
                other.whatsappUpdates == whatsappUpdates) &&
            (identical(other.selectCountry, selectCountry) ||
                other.selectCountry == selectCountry) &&
            (identical(other.selectState, selectState) ||
                other.selectState == selectState) &&
            (identical(other.selectCity, selectCity) ||
                other.selectCity == selectCity) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.isHomeAddress, isHomeAddress) ||
                other.isHomeAddress == isHomeAddress) &&
            const DeepCollectionEquality()
                .equals(other.dietaryPreference, dietaryPreference) &&
            const DeepCollectionEquality().equals(other.allergies, allergies) &&
            (identical(other.spiceLevel, spiceLevel) ||
                other.spiceLevel == spiceLevel) &&
            (identical(other.workName, workName) ||
                other.workName == workName) &&
            (identical(other.workState, workState) ||
                other.workState == workState) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.workAddress, workAddress) ||
                other.workAddress == workAddress) &&
            const DeepCollectionEquality().equals(other.cuisines, cuisines) &&
            (identical(other.orderUpdates, orderUpdates) ||
                other.orderUpdates == orderUpdates) &&
            (identical(other.dealsUpdate, dealsUpdate) ||
                other.dealsUpdate == dealsUpdate) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSucess, isSucess) ||
                other.isSucess == isSucess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        userName,
        avatarPath,
        phone,
        whatsappUpdates,
        selectCountry,
        selectState,
        selectCity,
        street,
        orderDescription,
        isHomeAddress,
        const DeepCollectionEquality().hash(dietaryPreference),
        const DeepCollectionEquality().hash(allergies),
        spiceLevel,
        workName,
        workState,
        zipCode,
        workAddress,
        const DeepCollectionEquality().hash(cuisines),
        orderUpdates,
        dealsUpdate,
        isLoading,
        isSucess,
        errorMessage
      ]);

  @override
  String toString() {
    return 'ProfileState(name: $name, userName: $userName, avatarPath: $avatarPath, phone: $phone, whatsappUpdates: $whatsappUpdates, selectCountry: $selectCountry, selectState: $selectState, selectCity: $selectCity, street: $street, orderDescription: $orderDescription, isHomeAddress: $isHomeAddress, dietaryPreference: $dietaryPreference, allergies: $allergies, spiceLevel: $spiceLevel, workName: $workName, workState: $workState, zipCode: $zipCode, workAddress: $workAddress, cuisines: $cuisines, orderUpdates: $orderUpdates, dealsUpdate: $dealsUpdate, isLoading: $isLoading, isSucess: $isSucess, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) _then) =
      _$ProfileStateCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String userName,
      String avatarPath,
      String phone,
      bool whatsappUpdates,
      LocationModel? selectCountry,
      LocationModel? selectState,
      LocationModel? selectCity,
      String street,
      String orderDescription,
      bool isHomeAddress,
      List<DietaryPreference> dietaryPreference,
      List<Allergy> allergies,
      SpiceLevel? spiceLevel,
      String workName,
      String workState,
      String zipCode,
      String workAddress,
      List<Cuisine> cuisines,
      bool orderUpdates,
      bool dealsUpdate,
      bool isLoading,
      bool isSucess,
      String? errorMessage});

  $LocationModelCopyWith<$Res>? get selectCountry;
  $LocationModelCopyWith<$Res>? get selectState;
  $LocationModelCopyWith<$Res>? get selectCity;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? userName = null,
    Object? avatarPath = null,
    Object? phone = null,
    Object? whatsappUpdates = null,
    Object? selectCountry = freezed,
    Object? selectState = freezed,
    Object? selectCity = freezed,
    Object? street = null,
    Object? orderDescription = null,
    Object? isHomeAddress = null,
    Object? dietaryPreference = null,
    Object? allergies = null,
    Object? spiceLevel = freezed,
    Object? workName = null,
    Object? workState = null,
    Object? zipCode = null,
    Object? workAddress = null,
    Object? cuisines = null,
    Object? orderUpdates = null,
    Object? dealsUpdate = null,
    Object? isLoading = null,
    Object? isSucess = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPath: null == avatarPath
          ? _self.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappUpdates: null == whatsappUpdates
          ? _self.whatsappUpdates
          : whatsappUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      selectCountry: freezed == selectCountry
          ? _self.selectCountry
          : selectCountry // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      selectState: freezed == selectState
          ? _self.selectState
          : selectState // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      selectCity: freezed == selectCity
          ? _self.selectCity
          : selectCity // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      orderDescription: null == orderDescription
          ? _self.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isHomeAddress: null == isHomeAddress
          ? _self.isHomeAddress
          : isHomeAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      dietaryPreference: null == dietaryPreference
          ? _self.dietaryPreference
          : dietaryPreference // ignore: cast_nullable_to_non_nullable
              as List<DietaryPreference>,
      allergies: null == allergies
          ? _self.allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<Allergy>,
      spiceLevel: freezed == spiceLevel
          ? _self.spiceLevel
          : spiceLevel // ignore: cast_nullable_to_non_nullable
              as SpiceLevel?,
      workName: null == workName
          ? _self.workName
          : workName // ignore: cast_nullable_to_non_nullable
              as String,
      workState: null == workState
          ? _self.workState
          : workState // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      workAddress: null == workAddress
          ? _self.workAddress
          : workAddress // ignore: cast_nullable_to_non_nullable
              as String,
      cuisines: null == cuisines
          ? _self.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<Cuisine>,
      orderUpdates: null == orderUpdates
          ? _self.orderUpdates
          : orderUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      dealsUpdate: null == dealsUpdate
          ? _self.dealsUpdate
          : dealsUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSucess: null == isSucess
          ? _self.isSucess
          : isSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectCountry {
    if (_self.selectCountry == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectCountry!, (value) {
      return _then(_self.copyWith(selectCountry: value));
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectState {
    if (_self.selectState == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectState!, (value) {
      return _then(_self.copyWith(selectState: value));
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectCity {
    if (_self.selectCity == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectCity!, (value) {
      return _then(_self.copyWith(selectCity: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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
    TResult Function(_ProfileState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
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
    TResult Function(_ProfileState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState():
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
    TResult? Function(_ProfileState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
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
            String name,
            String userName,
            String avatarPath,
            String phone,
            bool whatsappUpdates,
            LocationModel? selectCountry,
            LocationModel? selectState,
            LocationModel? selectCity,
            String street,
            String orderDescription,
            bool isHomeAddress,
            List<DietaryPreference> dietaryPreference,
            List<Allergy> allergies,
            SpiceLevel? spiceLevel,
            String workName,
            String workState,
            String zipCode,
            String workAddress,
            List<Cuisine> cuisines,
            bool orderUpdates,
            bool dealsUpdate,
            bool isLoading,
            bool isSucess,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
        return $default(
            _that.name,
            _that.userName,
            _that.avatarPath,
            _that.phone,
            _that.whatsappUpdates,
            _that.selectCountry,
            _that.selectState,
            _that.selectCity,
            _that.street,
            _that.orderDescription,
            _that.isHomeAddress,
            _that.dietaryPreference,
            _that.allergies,
            _that.spiceLevel,
            _that.workName,
            _that.workState,
            _that.zipCode,
            _that.workAddress,
            _that.cuisines,
            _that.orderUpdates,
            _that.dealsUpdate,
            _that.isLoading,
            _that.isSucess,
            _that.errorMessage);
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
            String name,
            String userName,
            String avatarPath,
            String phone,
            bool whatsappUpdates,
            LocationModel? selectCountry,
            LocationModel? selectState,
            LocationModel? selectCity,
            String street,
            String orderDescription,
            bool isHomeAddress,
            List<DietaryPreference> dietaryPreference,
            List<Allergy> allergies,
            SpiceLevel? spiceLevel,
            String workName,
            String workState,
            String zipCode,
            String workAddress,
            List<Cuisine> cuisines,
            bool orderUpdates,
            bool dealsUpdate,
            bool isLoading,
            bool isSucess,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState():
        return $default(
            _that.name,
            _that.userName,
            _that.avatarPath,
            _that.phone,
            _that.whatsappUpdates,
            _that.selectCountry,
            _that.selectState,
            _that.selectCity,
            _that.street,
            _that.orderDescription,
            _that.isHomeAddress,
            _that.dietaryPreference,
            _that.allergies,
            _that.spiceLevel,
            _that.workName,
            _that.workState,
            _that.zipCode,
            _that.workAddress,
            _that.cuisines,
            _that.orderUpdates,
            _that.dealsUpdate,
            _that.isLoading,
            _that.isSucess,
            _that.errorMessage);
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
            String name,
            String userName,
            String avatarPath,
            String phone,
            bool whatsappUpdates,
            LocationModel? selectCountry,
            LocationModel? selectState,
            LocationModel? selectCity,
            String street,
            String orderDescription,
            bool isHomeAddress,
            List<DietaryPreference> dietaryPreference,
            List<Allergy> allergies,
            SpiceLevel? spiceLevel,
            String workName,
            String workState,
            String zipCode,
            String workAddress,
            List<Cuisine> cuisines,
            bool orderUpdates,
            bool dealsUpdate,
            bool isLoading,
            bool isSucess,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
        return $default(
            _that.name,
            _that.userName,
            _that.avatarPath,
            _that.phone,
            _that.whatsappUpdates,
            _that.selectCountry,
            _that.selectState,
            _that.selectCity,
            _that.street,
            _that.orderDescription,
            _that.isHomeAddress,
            _that.dietaryPreference,
            _that.allergies,
            _that.spiceLevel,
            _that.workName,
            _that.workState,
            _that.zipCode,
            _that.workAddress,
            _that.cuisines,
            _that.orderUpdates,
            _that.dealsUpdate,
            _that.isLoading,
            _that.isSucess,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProfileState extends ProfileState {
  const _ProfileState(
      {this.name = '',
      this.userName = '',
      this.avatarPath = '',
      this.phone = '',
      this.whatsappUpdates = false,
      this.selectCountry,
      this.selectState,
      this.selectCity,
      this.street = '',
      this.orderDescription = '',
      this.isHomeAddress = true,
      final List<DietaryPreference> dietaryPreference = const [],
      final List<Allergy> allergies = const [],
      this.spiceLevel,
      this.workName = '',
      this.workState = '',
      this.zipCode = '',
      this.workAddress = '',
      final List<Cuisine> cuisines = const [],
      this.orderUpdates = false,
      this.dealsUpdate = false,
      this.isLoading = false,
      this.isSucess = false,
      this.errorMessage})
      : _dietaryPreference = dietaryPreference,
        _allergies = allergies,
        _cuisines = cuisines,
        super._();

// F -- Fields
// Step 1
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey()
  final String avatarPath;
//Step 2
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final bool whatsappUpdates;
//Step 3
  @override
  final LocationModel? selectCountry;
  @override
  final LocationModel? selectState;
  @override
  final LocationModel? selectCity;
  @override
  @JsonKey()
  final String street;
  @override
  @JsonKey()
  final String orderDescription;
  @override
  @JsonKey()
  final bool isHomeAddress;
//Step 4
//@Default(enumName.value) enumName enumNameInLowercase
  final List<DietaryPreference> _dietaryPreference;
//Step 4
//@Default(enumName.value) enumName enumNameInLowercase
  @override
  @JsonKey()
  List<DietaryPreference> get dietaryPreference {
    if (_dietaryPreference is EqualUnmodifiableListView)
      return _dietaryPreference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietaryPreference);
  }

  final List<Allergy> _allergies;
  @override
  @JsonKey()
  List<Allergy> get allergies {
    if (_allergies is EqualUnmodifiableListView) return _allergies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergies);
  }

  @override
  final SpiceLevel? spiceLevel;
//Step 5
  @override
  @JsonKey()
  final String workName;
  @override
  @JsonKey()
  final String workState;
  @override
  @JsonKey()
  final String zipCode;
  @override
  @JsonKey()
  final String workAddress;
//Step 6
  final List<Cuisine> _cuisines;
//Step 6
  @override
  @JsonKey()
  List<Cuisine> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  @override
  @JsonKey()
  final bool orderUpdates;
  @override
  @JsonKey()
  final bool dealsUpdate;
//Standard
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSucess;
  @override
  final String? errorMessage;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.whatsappUpdates, whatsappUpdates) ||
                other.whatsappUpdates == whatsappUpdates) &&
            (identical(other.selectCountry, selectCountry) ||
                other.selectCountry == selectCountry) &&
            (identical(other.selectState, selectState) ||
                other.selectState == selectState) &&
            (identical(other.selectCity, selectCity) ||
                other.selectCity == selectCity) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.isHomeAddress, isHomeAddress) ||
                other.isHomeAddress == isHomeAddress) &&
            const DeepCollectionEquality()
                .equals(other._dietaryPreference, _dietaryPreference) &&
            const DeepCollectionEquality()
                .equals(other._allergies, _allergies) &&
            (identical(other.spiceLevel, spiceLevel) ||
                other.spiceLevel == spiceLevel) &&
            (identical(other.workName, workName) ||
                other.workName == workName) &&
            (identical(other.workState, workState) ||
                other.workState == workState) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.workAddress, workAddress) ||
                other.workAddress == workAddress) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            (identical(other.orderUpdates, orderUpdates) ||
                other.orderUpdates == orderUpdates) &&
            (identical(other.dealsUpdate, dealsUpdate) ||
                other.dealsUpdate == dealsUpdate) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSucess, isSucess) ||
                other.isSucess == isSucess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        userName,
        avatarPath,
        phone,
        whatsappUpdates,
        selectCountry,
        selectState,
        selectCity,
        street,
        orderDescription,
        isHomeAddress,
        const DeepCollectionEquality().hash(_dietaryPreference),
        const DeepCollectionEquality().hash(_allergies),
        spiceLevel,
        workName,
        workState,
        zipCode,
        workAddress,
        const DeepCollectionEquality().hash(_cuisines),
        orderUpdates,
        dealsUpdate,
        isLoading,
        isSucess,
        errorMessage
      ]);

  @override
  String toString() {
    return 'ProfileState(name: $name, userName: $userName, avatarPath: $avatarPath, phone: $phone, whatsappUpdates: $whatsappUpdates, selectCountry: $selectCountry, selectState: $selectState, selectCity: $selectCity, street: $street, orderDescription: $orderDescription, isHomeAddress: $isHomeAddress, dietaryPreference: $dietaryPreference, allergies: $allergies, spiceLevel: $spiceLevel, workName: $workName, workState: $workState, zipCode: $zipCode, workAddress: $workAddress, cuisines: $cuisines, orderUpdates: $orderUpdates, dealsUpdate: $dealsUpdate, isLoading: $isLoading, isSucess: $isSucess, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) _then) =
      __$ProfileStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String userName,
      String avatarPath,
      String phone,
      bool whatsappUpdates,
      LocationModel? selectCountry,
      LocationModel? selectState,
      LocationModel? selectCity,
      String street,
      String orderDescription,
      bool isHomeAddress,
      List<DietaryPreference> dietaryPreference,
      List<Allergy> allergies,
      SpiceLevel? spiceLevel,
      String workName,
      String workState,
      String zipCode,
      String workAddress,
      List<Cuisine> cuisines,
      bool orderUpdates,
      bool dealsUpdate,
      bool isLoading,
      bool isSucess,
      String? errorMessage});

  @override
  $LocationModelCopyWith<$Res>? get selectCountry;
  @override
  $LocationModelCopyWith<$Res>? get selectState;
  @override
  $LocationModelCopyWith<$Res>? get selectCity;
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? userName = null,
    Object? avatarPath = null,
    Object? phone = null,
    Object? whatsappUpdates = null,
    Object? selectCountry = freezed,
    Object? selectState = freezed,
    Object? selectCity = freezed,
    Object? street = null,
    Object? orderDescription = null,
    Object? isHomeAddress = null,
    Object? dietaryPreference = null,
    Object? allergies = null,
    Object? spiceLevel = freezed,
    Object? workName = null,
    Object? workState = null,
    Object? zipCode = null,
    Object? workAddress = null,
    Object? cuisines = null,
    Object? orderUpdates = null,
    Object? dealsUpdate = null,
    Object? isLoading = null,
    Object? isSucess = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_ProfileState(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPath: null == avatarPath
          ? _self.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappUpdates: null == whatsappUpdates
          ? _self.whatsappUpdates
          : whatsappUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      selectCountry: freezed == selectCountry
          ? _self.selectCountry
          : selectCountry // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      selectState: freezed == selectState
          ? _self.selectState
          : selectState // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      selectCity: freezed == selectCity
          ? _self.selectCity
          : selectCity // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      orderDescription: null == orderDescription
          ? _self.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isHomeAddress: null == isHomeAddress
          ? _self.isHomeAddress
          : isHomeAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      dietaryPreference: null == dietaryPreference
          ? _self._dietaryPreference
          : dietaryPreference // ignore: cast_nullable_to_non_nullable
              as List<DietaryPreference>,
      allergies: null == allergies
          ? _self._allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<Allergy>,
      spiceLevel: freezed == spiceLevel
          ? _self.spiceLevel
          : spiceLevel // ignore: cast_nullable_to_non_nullable
              as SpiceLevel?,
      workName: null == workName
          ? _self.workName
          : workName // ignore: cast_nullable_to_non_nullable
              as String,
      workState: null == workState
          ? _self.workState
          : workState // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      workAddress: null == workAddress
          ? _self.workAddress
          : workAddress // ignore: cast_nullable_to_non_nullable
              as String,
      cuisines: null == cuisines
          ? _self._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<Cuisine>,
      orderUpdates: null == orderUpdates
          ? _self.orderUpdates
          : orderUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      dealsUpdate: null == dealsUpdate
          ? _self.dealsUpdate
          : dealsUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSucess: null == isSucess
          ? _self.isSucess
          : isSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectCountry {
    if (_self.selectCountry == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectCountry!, (value) {
      return _then(_self.copyWith(selectCountry: value));
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectState {
    if (_self.selectState == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectState!, (value) {
      return _then(_self.copyWith(selectState: value));
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get selectCity {
    if (_self.selectCity == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_self.selectCity!, (value) {
      return _then(_self.copyWith(selectCity: value));
    });
  }
}

// dart format on
