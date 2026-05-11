// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Restaurant {
// F -- Fields
// ========== IDENTITY ==========
  String get id;
  String get name;
  String get slug;
  String get description;
  String get imageUrl;
  String? get tagline;
  String? get logoUrl;
  List<String> get coverImages; // ========== CLASSIFICATION ==========
  List<CuisineType> get cuisines;
  List<String> get categories;
  PriceRange get priceRange;
  List<String> get tags;
  RestaurantStatus get status;
  RestaurantTier? get tier; // ========== LOCATION ==========
  RestaurantAddress get address;
  double? get latitude;
  double? get longitude;
  double get deliveryRadiusKm; // ========== HOURS & AVAILABILITY ==========
  List<RestaurantOpeningHours> get openingHours;
  bool get isOpenNow;
  bool get isTemporarilyClosed;
  DateTime? get nextOpeningTime;
  DateTime? get nextClosingTime; // ========== DELIVERY ==========
  double get deliveryFee;
  double get deliveryTimeMin;
  double get deliveryTimeMax;
  double? get minimumOrderAmount; //required String estimatedDeliveryTime,
  bool get offersDelivery;
  bool get offersPickup;
  bool get offersCatering;
  List<OrderType> get orderTypes; // ========== RATINGS ==========
  double get rating;
  int get reviewCount;
  double? get foodRating;
  double? get deliveryRating;
  double? get packagingRating; // ========== FEATURES ==========
  List<RestaurantDietaryPreference> get dietaryOptions;
  List<Amenity> get amenities;
  bool get acceptsCustomRequests;
  bool get hasAlcohol;
  bool get isChain;
  bool get isSponsored; // ========== PAYMENT ==========
  List<PaymentMethod>
      get acceptedPaymentMethods; // ========== PROMOTIONS ==========
  List<RestaurantPromotion> get activePromotions; // ========== MENU ==========
  List<RestaurantMenuCategory> get menuCategories;
  List<String> get popularItemIds; // ========== CONTACT ==========
  String get phoneNumber;
  String? get websiteUrl;
  String? get email; // ========== METADATA ==========
  DateTime get createdAt;
  DateTime get updatedAt;
  String? get ownerId; // ========== REVIEW ==========
  List<Review> get reviews;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestaurantCopyWith<Restaurant> get copyWith =>
      _$RestaurantCopyWithImpl<Restaurant>(this as Restaurant, _$identity);

  /// Serializes this Restaurant to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Restaurant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            const DeepCollectionEquality()
                .equals(other.coverImages, coverImages) &&
            const DeepCollectionEquality().equals(other.cuisines, cuisines) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.deliveryRadiusKm, deliveryRadiusKm) ||
                other.deliveryRadiusKm == deliveryRadiusKm) &&
            const DeepCollectionEquality()
                .equals(other.openingHours, openingHours) &&
            (identical(other.isOpenNow, isOpenNow) ||
                other.isOpenNow == isOpenNow) &&
            (identical(other.isTemporarilyClosed, isTemporarilyClosed) ||
                other.isTemporarilyClosed == isTemporarilyClosed) &&
            (identical(other.nextOpeningTime, nextOpeningTime) ||
                other.nextOpeningTime == nextOpeningTime) &&
            (identical(other.nextClosingTime, nextClosingTime) ||
                other.nextClosingTime == nextClosingTime) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.deliveryTimeMin, deliveryTimeMin) ||
                other.deliveryTimeMin == deliveryTimeMin) &&
            (identical(other.deliveryTimeMax, deliveryTimeMax) ||
                other.deliveryTimeMax == deliveryTimeMax) &&
            (identical(other.minimumOrderAmount, minimumOrderAmount) ||
                other.minimumOrderAmount == minimumOrderAmount) &&
            (identical(other.offersDelivery, offersDelivery) ||
                other.offersDelivery == offersDelivery) &&
            (identical(other.offersPickup, offersPickup) ||
                other.offersPickup == offersPickup) &&
            (identical(other.offersCatering, offersCatering) ||
                other.offersCatering == offersCatering) &&
            const DeepCollectionEquality()
                .equals(other.orderTypes, orderTypes) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.foodRating, foodRating) ||
                other.foodRating == foodRating) &&
            (identical(other.deliveryRating, deliveryRating) ||
                other.deliveryRating == deliveryRating) &&
            (identical(other.packagingRating, packagingRating) ||
                other.packagingRating == packagingRating) &&
            const DeepCollectionEquality()
                .equals(other.dietaryOptions, dietaryOptions) &&
            const DeepCollectionEquality().equals(other.amenities, amenities) &&
            (identical(other.acceptsCustomRequests, acceptsCustomRequests) ||
                other.acceptsCustomRequests == acceptsCustomRequests) &&
            (identical(other.hasAlcohol, hasAlcohol) ||
                other.hasAlcohol == hasAlcohol) &&
            (identical(other.isChain, isChain) || other.isChain == isChain) &&
            (identical(other.isSponsored, isSponsored) ||
                other.isSponsored == isSponsored) &&
            const DeepCollectionEquality()
                .equals(other.acceptedPaymentMethods, acceptedPaymentMethods) &&
            const DeepCollectionEquality()
                .equals(other.activePromotions, activePromotions) &&
            const DeepCollectionEquality()
                .equals(other.menuCategories, menuCategories) &&
            const DeepCollectionEquality()
                .equals(other.popularItemIds, popularItemIds) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        slug,
        description,
        imageUrl,
        tagline,
        logoUrl,
        const DeepCollectionEquality().hash(coverImages),
        const DeepCollectionEquality().hash(cuisines),
        const DeepCollectionEquality().hash(categories),
        priceRange,
        const DeepCollectionEquality().hash(tags),
        status,
        tier,
        address,
        latitude,
        longitude,
        deliveryRadiusKm,
        const DeepCollectionEquality().hash(openingHours),
        isOpenNow,
        isTemporarilyClosed,
        nextOpeningTime,
        nextClosingTime,
        deliveryFee,
        deliveryTimeMin,
        deliveryTimeMax,
        minimumOrderAmount,
        offersDelivery,
        offersPickup,
        offersCatering,
        const DeepCollectionEquality().hash(orderTypes),
        rating,
        reviewCount,
        foodRating,
        deliveryRating,
        packagingRating,
        const DeepCollectionEquality().hash(dietaryOptions),
        const DeepCollectionEquality().hash(amenities),
        acceptsCustomRequests,
        hasAlcohol,
        isChain,
        isSponsored,
        const DeepCollectionEquality().hash(acceptedPaymentMethods),
        const DeepCollectionEquality().hash(activePromotions),
        const DeepCollectionEquality().hash(menuCategories),
        const DeepCollectionEquality().hash(popularItemIds),
        phoneNumber,
        websiteUrl,
        email,
        createdAt,
        updatedAt,
        ownerId,
        const DeepCollectionEquality().hash(reviews)
      ]);

  @override
  String toString() {
    return 'Restaurant(id: $id, name: $name, slug: $slug, description: $description, imageUrl: $imageUrl, tagline: $tagline, logoUrl: $logoUrl, coverImages: $coverImages, cuisines: $cuisines, categories: $categories, priceRange: $priceRange, tags: $tags, status: $status, tier: $tier, address: $address, latitude: $latitude, longitude: $longitude, deliveryRadiusKm: $deliveryRadiusKm, openingHours: $openingHours, isOpenNow: $isOpenNow, isTemporarilyClosed: $isTemporarilyClosed, nextOpeningTime: $nextOpeningTime, nextClosingTime: $nextClosingTime, deliveryFee: $deliveryFee, deliveryTimeMin: $deliveryTimeMin, deliveryTimeMax: $deliveryTimeMax, minimumOrderAmount: $minimumOrderAmount, offersDelivery: $offersDelivery, offersPickup: $offersPickup, offersCatering: $offersCatering, orderTypes: $orderTypes, rating: $rating, reviewCount: $reviewCount, foodRating: $foodRating, deliveryRating: $deliveryRating, packagingRating: $packagingRating, dietaryOptions: $dietaryOptions, amenities: $amenities, acceptsCustomRequests: $acceptsCustomRequests, hasAlcohol: $hasAlcohol, isChain: $isChain, isSponsored: $isSponsored, acceptedPaymentMethods: $acceptedPaymentMethods, activePromotions: $activePromotions, menuCategories: $menuCategories, popularItemIds: $popularItemIds, phoneNumber: $phoneNumber, websiteUrl: $websiteUrl, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, ownerId: $ownerId, reviews: $reviews)';
  }
}

/// @nodoc
abstract mixin class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) _then) =
      _$RestaurantCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String description,
      String imageUrl,
      String? tagline,
      String? logoUrl,
      List<String> coverImages,
      List<CuisineType> cuisines,
      List<String> categories,
      PriceRange priceRange,
      List<String> tags,
      RestaurantStatus status,
      RestaurantTier? tier,
      RestaurantAddress address,
      double? latitude,
      double? longitude,
      double deliveryRadiusKm,
      List<RestaurantOpeningHours> openingHours,
      bool isOpenNow,
      bool isTemporarilyClosed,
      DateTime? nextOpeningTime,
      DateTime? nextClosingTime,
      double deliveryFee,
      double deliveryTimeMin,
      double deliveryTimeMax,
      double? minimumOrderAmount,
      bool offersDelivery,
      bool offersPickup,
      bool offersCatering,
      List<OrderType> orderTypes,
      double rating,
      int reviewCount,
      double? foodRating,
      double? deliveryRating,
      double? packagingRating,
      List<RestaurantDietaryPreference> dietaryOptions,
      List<Amenity> amenities,
      bool acceptsCustomRequests,
      bool hasAlcohol,
      bool isChain,
      bool isSponsored,
      List<PaymentMethod> acceptedPaymentMethods,
      List<RestaurantPromotion> activePromotions,
      List<RestaurantMenuCategory> menuCategories,
      List<String> popularItemIds,
      String phoneNumber,
      String? websiteUrl,
      String? email,
      DateTime createdAt,
      DateTime updatedAt,
      String? ownerId,
      List<Review> reviews});

  $RestaurantAddressCopyWith<$Res> get address;
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res> implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._self, this._then);

  final Restaurant _self;
  final $Res Function(Restaurant) _then;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? tagline = freezed,
    Object? logoUrl = freezed,
    Object? coverImages = null,
    Object? cuisines = null,
    Object? categories = null,
    Object? priceRange = null,
    Object? tags = null,
    Object? status = null,
    Object? tier = freezed,
    Object? address = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? deliveryRadiusKm = null,
    Object? openingHours = null,
    Object? isOpenNow = null,
    Object? isTemporarilyClosed = null,
    Object? nextOpeningTime = freezed,
    Object? nextClosingTime = freezed,
    Object? deliveryFee = null,
    Object? deliveryTimeMin = null,
    Object? deliveryTimeMax = null,
    Object? minimumOrderAmount = freezed,
    Object? offersDelivery = null,
    Object? offersPickup = null,
    Object? offersCatering = null,
    Object? orderTypes = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? foodRating = freezed,
    Object? deliveryRating = freezed,
    Object? packagingRating = freezed,
    Object? dietaryOptions = null,
    Object? amenities = null,
    Object? acceptsCustomRequests = null,
    Object? hasAlcohol = null,
    Object? isChain = null,
    Object? isSponsored = null,
    Object? acceptedPaymentMethods = null,
    Object? activePromotions = null,
    Object? menuCategories = null,
    Object? popularItemIds = null,
    Object? phoneNumber = null,
    Object? websiteUrl = freezed,
    Object? email = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? ownerId = freezed,
    Object? reviews = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: freezed == tagline
          ? _self.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _self.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImages: null == coverImages
          ? _self.coverImages
          : coverImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cuisines: null == cuisines
          ? _self.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<CuisineType>,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      priceRange: null == priceRange
          ? _self.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRange,
      tags: null == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as RestaurantStatus,
      tier: freezed == tier
          ? _self.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as RestaurantTier?,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as RestaurantAddress,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryRadiusKm: null == deliveryRadiusKm
          ? _self.deliveryRadiusKm
          : deliveryRadiusKm // ignore: cast_nullable_to_non_nullable
              as double,
      openingHours: null == openingHours
          ? _self.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<RestaurantOpeningHours>,
      isOpenNow: null == isOpenNow
          ? _self.isOpenNow
          : isOpenNow // ignore: cast_nullable_to_non_nullable
              as bool,
      isTemporarilyClosed: null == isTemporarilyClosed
          ? _self.isTemporarilyClosed
          : isTemporarilyClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      nextOpeningTime: freezed == nextOpeningTime
          ? _self.nextOpeningTime
          : nextOpeningTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextClosingTime: freezed == nextClosingTime
          ? _self.nextClosingTime
          : nextClosingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryFee: null == deliveryFee
          ? _self.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryTimeMin: null == deliveryTimeMin
          ? _self.deliveryTimeMin
          : deliveryTimeMin // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryTimeMax: null == deliveryTimeMax
          ? _self.deliveryTimeMax
          : deliveryTimeMax // ignore: cast_nullable_to_non_nullable
              as double,
      minimumOrderAmount: freezed == minimumOrderAmount
          ? _self.minimumOrderAmount
          : minimumOrderAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      offersDelivery: null == offersDelivery
          ? _self.offersDelivery
          : offersDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      offersPickup: null == offersPickup
          ? _self.offersPickup
          : offersPickup // ignore: cast_nullable_to_non_nullable
              as bool,
      offersCatering: null == offersCatering
          ? _self.offersCatering
          : offersCatering // ignore: cast_nullable_to_non_nullable
              as bool,
      orderTypes: null == orderTypes
          ? _self.orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<OrderType>,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _self.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      foodRating: freezed == foodRating
          ? _self.foodRating
          : foodRating // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryRating: freezed == deliveryRating
          ? _self.deliveryRating
          : deliveryRating // ignore: cast_nullable_to_non_nullable
              as double?,
      packagingRating: freezed == packagingRating
          ? _self.packagingRating
          : packagingRating // ignore: cast_nullable_to_non_nullable
              as double?,
      dietaryOptions: null == dietaryOptions
          ? _self.dietaryOptions
          : dietaryOptions // ignore: cast_nullable_to_non_nullable
              as List<RestaurantDietaryPreference>,
      amenities: null == amenities
          ? _self.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
      acceptsCustomRequests: null == acceptsCustomRequests
          ? _self.acceptsCustomRequests
          : acceptsCustomRequests // ignore: cast_nullable_to_non_nullable
              as bool,
      hasAlcohol: null == hasAlcohol
          ? _self.hasAlcohol
          : hasAlcohol // ignore: cast_nullable_to_non_nullable
              as bool,
      isChain: null == isChain
          ? _self.isChain
          : isChain // ignore: cast_nullable_to_non_nullable
              as bool,
      isSponsored: null == isSponsored
          ? _self.isSponsored
          : isSponsored // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptedPaymentMethods: null == acceptedPaymentMethods
          ? _self.acceptedPaymentMethods
          : acceptedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>,
      activePromotions: null == activePromotions
          ? _self.activePromotions
          : activePromotions // ignore: cast_nullable_to_non_nullable
              as List<RestaurantPromotion>,
      menuCategories: null == menuCategories
          ? _self.menuCategories
          : menuCategories // ignore: cast_nullable_to_non_nullable
              as List<RestaurantMenuCategory>,
      popularItemIds: null == popularItemIds
          ? _self.popularItemIds
          : popularItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      websiteUrl: freezed == websiteUrl
          ? _self.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ownerId: freezed == ownerId
          ? _self.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: null == reviews
          ? _self.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RestaurantAddressCopyWith<$Res> get address {
    return $RestaurantAddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Restaurant].
extension RestaurantPatterns on Restaurant {
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
    TResult Function(_Restaurant value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Restaurant() when $default != null:
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
    TResult Function(_Restaurant value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Restaurant():
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
    TResult? Function(_Restaurant value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Restaurant() when $default != null:
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
            String name,
            String slug,
            String description,
            String imageUrl,
            String? tagline,
            String? logoUrl,
            List<String> coverImages,
            List<CuisineType> cuisines,
            List<String> categories,
            PriceRange priceRange,
            List<String> tags,
            RestaurantStatus status,
            RestaurantTier? tier,
            RestaurantAddress address,
            double? latitude,
            double? longitude,
            double deliveryRadiusKm,
            List<RestaurantOpeningHours> openingHours,
            bool isOpenNow,
            bool isTemporarilyClosed,
            DateTime? nextOpeningTime,
            DateTime? nextClosingTime,
            double deliveryFee,
            double deliveryTimeMin,
            double deliveryTimeMax,
            double? minimumOrderAmount,
            bool offersDelivery,
            bool offersPickup,
            bool offersCatering,
            List<OrderType> orderTypes,
            double rating,
            int reviewCount,
            double? foodRating,
            double? deliveryRating,
            double? packagingRating,
            List<RestaurantDietaryPreference> dietaryOptions,
            List<Amenity> amenities,
            bool acceptsCustomRequests,
            bool hasAlcohol,
            bool isChain,
            bool isSponsored,
            List<PaymentMethod> acceptedPaymentMethods,
            List<RestaurantPromotion> activePromotions,
            List<RestaurantMenuCategory> menuCategories,
            List<String> popularItemIds,
            String phoneNumber,
            String? websiteUrl,
            String? email,
            DateTime createdAt,
            DateTime updatedAt,
            String? ownerId,
            List<Review> reviews)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Restaurant() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.slug,
            _that.description,
            _that.imageUrl,
            _that.tagline,
            _that.logoUrl,
            _that.coverImages,
            _that.cuisines,
            _that.categories,
            _that.priceRange,
            _that.tags,
            _that.status,
            _that.tier,
            _that.address,
            _that.latitude,
            _that.longitude,
            _that.deliveryRadiusKm,
            _that.openingHours,
            _that.isOpenNow,
            _that.isTemporarilyClosed,
            _that.nextOpeningTime,
            _that.nextClosingTime,
            _that.deliveryFee,
            _that.deliveryTimeMin,
            _that.deliveryTimeMax,
            _that.minimumOrderAmount,
            _that.offersDelivery,
            _that.offersPickup,
            _that.offersCatering,
            _that.orderTypes,
            _that.rating,
            _that.reviewCount,
            _that.foodRating,
            _that.deliveryRating,
            _that.packagingRating,
            _that.dietaryOptions,
            _that.amenities,
            _that.acceptsCustomRequests,
            _that.hasAlcohol,
            _that.isChain,
            _that.isSponsored,
            _that.acceptedPaymentMethods,
            _that.activePromotions,
            _that.menuCategories,
            _that.popularItemIds,
            _that.phoneNumber,
            _that.websiteUrl,
            _that.email,
            _that.createdAt,
            _that.updatedAt,
            _that.ownerId,
            _that.reviews);
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
            String name,
            String slug,
            String description,
            String imageUrl,
            String? tagline,
            String? logoUrl,
            List<String> coverImages,
            List<CuisineType> cuisines,
            List<String> categories,
            PriceRange priceRange,
            List<String> tags,
            RestaurantStatus status,
            RestaurantTier? tier,
            RestaurantAddress address,
            double? latitude,
            double? longitude,
            double deliveryRadiusKm,
            List<RestaurantOpeningHours> openingHours,
            bool isOpenNow,
            bool isTemporarilyClosed,
            DateTime? nextOpeningTime,
            DateTime? nextClosingTime,
            double deliveryFee,
            double deliveryTimeMin,
            double deliveryTimeMax,
            double? minimumOrderAmount,
            bool offersDelivery,
            bool offersPickup,
            bool offersCatering,
            List<OrderType> orderTypes,
            double rating,
            int reviewCount,
            double? foodRating,
            double? deliveryRating,
            double? packagingRating,
            List<RestaurantDietaryPreference> dietaryOptions,
            List<Amenity> amenities,
            bool acceptsCustomRequests,
            bool hasAlcohol,
            bool isChain,
            bool isSponsored,
            List<PaymentMethod> acceptedPaymentMethods,
            List<RestaurantPromotion> activePromotions,
            List<RestaurantMenuCategory> menuCategories,
            List<String> popularItemIds,
            String phoneNumber,
            String? websiteUrl,
            String? email,
            DateTime createdAt,
            DateTime updatedAt,
            String? ownerId,
            List<Review> reviews)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Restaurant():
        return $default(
            _that.id,
            _that.name,
            _that.slug,
            _that.description,
            _that.imageUrl,
            _that.tagline,
            _that.logoUrl,
            _that.coverImages,
            _that.cuisines,
            _that.categories,
            _that.priceRange,
            _that.tags,
            _that.status,
            _that.tier,
            _that.address,
            _that.latitude,
            _that.longitude,
            _that.deliveryRadiusKm,
            _that.openingHours,
            _that.isOpenNow,
            _that.isTemporarilyClosed,
            _that.nextOpeningTime,
            _that.nextClosingTime,
            _that.deliveryFee,
            _that.deliveryTimeMin,
            _that.deliveryTimeMax,
            _that.minimumOrderAmount,
            _that.offersDelivery,
            _that.offersPickup,
            _that.offersCatering,
            _that.orderTypes,
            _that.rating,
            _that.reviewCount,
            _that.foodRating,
            _that.deliveryRating,
            _that.packagingRating,
            _that.dietaryOptions,
            _that.amenities,
            _that.acceptsCustomRequests,
            _that.hasAlcohol,
            _that.isChain,
            _that.isSponsored,
            _that.acceptedPaymentMethods,
            _that.activePromotions,
            _that.menuCategories,
            _that.popularItemIds,
            _that.phoneNumber,
            _that.websiteUrl,
            _that.email,
            _that.createdAt,
            _that.updatedAt,
            _that.ownerId,
            _that.reviews);
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
            String name,
            String slug,
            String description,
            String imageUrl,
            String? tagline,
            String? logoUrl,
            List<String> coverImages,
            List<CuisineType> cuisines,
            List<String> categories,
            PriceRange priceRange,
            List<String> tags,
            RestaurantStatus status,
            RestaurantTier? tier,
            RestaurantAddress address,
            double? latitude,
            double? longitude,
            double deliveryRadiusKm,
            List<RestaurantOpeningHours> openingHours,
            bool isOpenNow,
            bool isTemporarilyClosed,
            DateTime? nextOpeningTime,
            DateTime? nextClosingTime,
            double deliveryFee,
            double deliveryTimeMin,
            double deliveryTimeMax,
            double? minimumOrderAmount,
            bool offersDelivery,
            bool offersPickup,
            bool offersCatering,
            List<OrderType> orderTypes,
            double rating,
            int reviewCount,
            double? foodRating,
            double? deliveryRating,
            double? packagingRating,
            List<RestaurantDietaryPreference> dietaryOptions,
            List<Amenity> amenities,
            bool acceptsCustomRequests,
            bool hasAlcohol,
            bool isChain,
            bool isSponsored,
            List<PaymentMethod> acceptedPaymentMethods,
            List<RestaurantPromotion> activePromotions,
            List<RestaurantMenuCategory> menuCategories,
            List<String> popularItemIds,
            String phoneNumber,
            String? websiteUrl,
            String? email,
            DateTime createdAt,
            DateTime updatedAt,
            String? ownerId,
            List<Review> reviews)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Restaurant() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.slug,
            _that.description,
            _that.imageUrl,
            _that.tagline,
            _that.logoUrl,
            _that.coverImages,
            _that.cuisines,
            _that.categories,
            _that.priceRange,
            _that.tags,
            _that.status,
            _that.tier,
            _that.address,
            _that.latitude,
            _that.longitude,
            _that.deliveryRadiusKm,
            _that.openingHours,
            _that.isOpenNow,
            _that.isTemporarilyClosed,
            _that.nextOpeningTime,
            _that.nextClosingTime,
            _that.deliveryFee,
            _that.deliveryTimeMin,
            _that.deliveryTimeMax,
            _that.minimumOrderAmount,
            _that.offersDelivery,
            _that.offersPickup,
            _that.offersCatering,
            _that.orderTypes,
            _that.rating,
            _that.reviewCount,
            _that.foodRating,
            _that.deliveryRating,
            _that.packagingRating,
            _that.dietaryOptions,
            _that.amenities,
            _that.acceptsCustomRequests,
            _that.hasAlcohol,
            _that.isChain,
            _that.isSponsored,
            _that.acceptedPaymentMethods,
            _that.activePromotions,
            _that.menuCategories,
            _that.popularItemIds,
            _that.phoneNumber,
            _that.websiteUrl,
            _that.email,
            _that.createdAt,
            _that.updatedAt,
            _that.ownerId,
            _that.reviews);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Restaurant extends Restaurant {
  const _Restaurant(
      {required this.id,
      required this.name,
      required this.slug,
      required this.description,
      required this.imageUrl,
      this.tagline,
      this.logoUrl,
      final List<String> coverImages = const [],
      final List<CuisineType> cuisines = const [],
      final List<String> categories = const [],
      required this.priceRange,
      final List<String> tags = const [],
      required this.status,
      this.tier,
      required this.address,
      this.latitude,
      this.longitude,
      this.deliveryRadiusKm = 5.0,
      final List<RestaurantOpeningHours> openingHours = const [],
      required this.isOpenNow,
      this.isTemporarilyClosed = false,
      this.nextOpeningTime,
      this.nextClosingTime,
      this.deliveryFee = 0.0,
      this.deliveryTimeMin = 0.0,
      this.deliveryTimeMax = 0.0,
      this.minimumOrderAmount,
      this.offersDelivery = true,
      this.offersPickup = true,
      this.offersCatering = false,
      final List<OrderType> orderTypes = const [],
      this.rating = 0.0,
      this.reviewCount = 0,
      this.foodRating,
      this.deliveryRating,
      this.packagingRating,
      final List<RestaurantDietaryPreference> dietaryOptions = const [],
      final List<Amenity> amenities = const [],
      this.acceptsCustomRequests = true,
      this.hasAlcohol = false,
      this.isChain = false,
      this.isSponsored = false,
      final List<PaymentMethod> acceptedPaymentMethods = const [
        PaymentMethod.creditCard,
        PaymentMethod.cash
      ],
      final List<RestaurantPromotion> activePromotions = const [],
      final List<RestaurantMenuCategory> menuCategories = const [],
      final List<String> popularItemIds = const [],
      required this.phoneNumber,
      this.websiteUrl,
      this.email,
      required this.createdAt,
      required this.updatedAt,
      this.ownerId,
      final List<Review> reviews = const []})
      : _coverImages = coverImages,
        _cuisines = cuisines,
        _categories = categories,
        _tags = tags,
        _openingHours = openingHours,
        _orderTypes = orderTypes,
        _dietaryOptions = dietaryOptions,
        _amenities = amenities,
        _acceptedPaymentMethods = acceptedPaymentMethods,
        _activePromotions = activePromotions,
        _menuCategories = menuCategories,
        _popularItemIds = popularItemIds,
        _reviews = reviews,
        super._();
  factory _Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);

// F -- Fields
// ========== IDENTITY ==========
  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String? tagline;
  @override
  final String? logoUrl;
  final List<String> _coverImages;
  @override
  @JsonKey()
  List<String> get coverImages {
    if (_coverImages is EqualUnmodifiableListView) return _coverImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coverImages);
  }

// ========== CLASSIFICATION ==========
  final List<CuisineType> _cuisines;
// ========== CLASSIFICATION ==========
  @override
  @JsonKey()
  List<CuisineType> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final PriceRange priceRange;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final RestaurantStatus status;
  @override
  final RestaurantTier? tier;
// ========== LOCATION ==========
  @override
  final RestaurantAddress address;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  @JsonKey()
  final double deliveryRadiusKm;
// ========== HOURS & AVAILABILITY ==========
  final List<RestaurantOpeningHours> _openingHours;
// ========== HOURS & AVAILABILITY ==========
  @override
  @JsonKey()
  List<RestaurantOpeningHours> get openingHours {
    if (_openingHours is EqualUnmodifiableListView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openingHours);
  }

  @override
  final bool isOpenNow;
  @override
  @JsonKey()
  final bool isTemporarilyClosed;
  @override
  final DateTime? nextOpeningTime;
  @override
  final DateTime? nextClosingTime;
// ========== DELIVERY ==========
  @override
  @JsonKey()
  final double deliveryFee;
  @override
  @JsonKey()
  final double deliveryTimeMin;
  @override
  @JsonKey()
  final double deliveryTimeMax;
  @override
  final double? minimumOrderAmount;
//required String estimatedDeliveryTime,
  @override
  @JsonKey()
  final bool offersDelivery;
  @override
  @JsonKey()
  final bool offersPickup;
  @override
  @JsonKey()
  final bool offersCatering;
  final List<OrderType> _orderTypes;
  @override
  @JsonKey()
  List<OrderType> get orderTypes {
    if (_orderTypes is EqualUnmodifiableListView) return _orderTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderTypes);
  }

// ========== RATINGS ==========
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int reviewCount;
  @override
  final double? foodRating;
  @override
  final double? deliveryRating;
  @override
  final double? packagingRating;
// ========== FEATURES ==========
  final List<RestaurantDietaryPreference> _dietaryOptions;
// ========== FEATURES ==========
  @override
  @JsonKey()
  List<RestaurantDietaryPreference> get dietaryOptions {
    if (_dietaryOptions is EqualUnmodifiableListView) return _dietaryOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietaryOptions);
  }

  final List<Amenity> _amenities;
  @override
  @JsonKey()
  List<Amenity> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  @override
  @JsonKey()
  final bool acceptsCustomRequests;
  @override
  @JsonKey()
  final bool hasAlcohol;
  @override
  @JsonKey()
  final bool isChain;
  @override
  @JsonKey()
  final bool isSponsored;
// ========== PAYMENT ==========
  final List<PaymentMethod> _acceptedPaymentMethods;
// ========== PAYMENT ==========
  @override
  @JsonKey()
  List<PaymentMethod> get acceptedPaymentMethods {
    if (_acceptedPaymentMethods is EqualUnmodifiableListView)
      return _acceptedPaymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_acceptedPaymentMethods);
  }

// ========== PROMOTIONS ==========
  final List<RestaurantPromotion> _activePromotions;
// ========== PROMOTIONS ==========
  @override
  @JsonKey()
  List<RestaurantPromotion> get activePromotions {
    if (_activePromotions is EqualUnmodifiableListView)
      return _activePromotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activePromotions);
  }

// ========== MENU ==========
  final List<RestaurantMenuCategory> _menuCategories;
// ========== MENU ==========
  @override
  @JsonKey()
  List<RestaurantMenuCategory> get menuCategories {
    if (_menuCategories is EqualUnmodifiableListView) return _menuCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuCategories);
  }

  final List<String> _popularItemIds;
  @override
  @JsonKey()
  List<String> get popularItemIds {
    if (_popularItemIds is EqualUnmodifiableListView) return _popularItemIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularItemIds);
  }

// ========== CONTACT ==========
  @override
  final String phoneNumber;
  @override
  final String? websiteUrl;
  @override
  final String? email;
// ========== METADATA ==========
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? ownerId;
// ========== REVIEW ==========
  final List<Review> _reviews;
// ========== REVIEW ==========
  @override
  @JsonKey()
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RestaurantCopyWith<_Restaurant> get copyWith =>
      __$RestaurantCopyWithImpl<_Restaurant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RestaurantToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Restaurant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            const DeepCollectionEquality()
                .equals(other._coverImages, _coverImages) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.deliveryRadiusKm, deliveryRadiusKm) ||
                other.deliveryRadiusKm == deliveryRadiusKm) &&
            const DeepCollectionEquality()
                .equals(other._openingHours, _openingHours) &&
            (identical(other.isOpenNow, isOpenNow) ||
                other.isOpenNow == isOpenNow) &&
            (identical(other.isTemporarilyClosed, isTemporarilyClosed) ||
                other.isTemporarilyClosed == isTemporarilyClosed) &&
            (identical(other.nextOpeningTime, nextOpeningTime) ||
                other.nextOpeningTime == nextOpeningTime) &&
            (identical(other.nextClosingTime, nextClosingTime) ||
                other.nextClosingTime == nextClosingTime) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.deliveryTimeMin, deliveryTimeMin) ||
                other.deliveryTimeMin == deliveryTimeMin) &&
            (identical(other.deliveryTimeMax, deliveryTimeMax) ||
                other.deliveryTimeMax == deliveryTimeMax) &&
            (identical(other.minimumOrderAmount, minimumOrderAmount) ||
                other.minimumOrderAmount == minimumOrderAmount) &&
            (identical(other.offersDelivery, offersDelivery) ||
                other.offersDelivery == offersDelivery) &&
            (identical(other.offersPickup, offersPickup) ||
                other.offersPickup == offersPickup) &&
            (identical(other.offersCatering, offersCatering) ||
                other.offersCatering == offersCatering) &&
            const DeepCollectionEquality()
                .equals(other._orderTypes, _orderTypes) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.foodRating, foodRating) ||
                other.foodRating == foodRating) &&
            (identical(other.deliveryRating, deliveryRating) ||
                other.deliveryRating == deliveryRating) &&
            (identical(other.packagingRating, packagingRating) ||
                other.packagingRating == packagingRating) &&
            const DeepCollectionEquality()
                .equals(other._dietaryOptions, _dietaryOptions) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            (identical(other.acceptsCustomRequests, acceptsCustomRequests) ||
                other.acceptsCustomRequests == acceptsCustomRequests) &&
            (identical(other.hasAlcohol, hasAlcohol) ||
                other.hasAlcohol == hasAlcohol) &&
            (identical(other.isChain, isChain) || other.isChain == isChain) &&
            (identical(other.isSponsored, isSponsored) ||
                other.isSponsored == isSponsored) &&
            const DeepCollectionEquality().equals(
                other._acceptedPaymentMethods, _acceptedPaymentMethods) &&
            const DeepCollectionEquality()
                .equals(other._activePromotions, _activePromotions) &&
            const DeepCollectionEquality()
                .equals(other._menuCategories, _menuCategories) &&
            const DeepCollectionEquality()
                .equals(other._popularItemIds, _popularItemIds) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        slug,
        description,
        imageUrl,
        tagline,
        logoUrl,
        const DeepCollectionEquality().hash(_coverImages),
        const DeepCollectionEquality().hash(_cuisines),
        const DeepCollectionEquality().hash(_categories),
        priceRange,
        const DeepCollectionEquality().hash(_tags),
        status,
        tier,
        address,
        latitude,
        longitude,
        deliveryRadiusKm,
        const DeepCollectionEquality().hash(_openingHours),
        isOpenNow,
        isTemporarilyClosed,
        nextOpeningTime,
        nextClosingTime,
        deliveryFee,
        deliveryTimeMin,
        deliveryTimeMax,
        minimumOrderAmount,
        offersDelivery,
        offersPickup,
        offersCatering,
        const DeepCollectionEquality().hash(_orderTypes),
        rating,
        reviewCount,
        foodRating,
        deliveryRating,
        packagingRating,
        const DeepCollectionEquality().hash(_dietaryOptions),
        const DeepCollectionEquality().hash(_amenities),
        acceptsCustomRequests,
        hasAlcohol,
        isChain,
        isSponsored,
        const DeepCollectionEquality().hash(_acceptedPaymentMethods),
        const DeepCollectionEquality().hash(_activePromotions),
        const DeepCollectionEquality().hash(_menuCategories),
        const DeepCollectionEquality().hash(_popularItemIds),
        phoneNumber,
        websiteUrl,
        email,
        createdAt,
        updatedAt,
        ownerId,
        const DeepCollectionEquality().hash(_reviews)
      ]);

  @override
  String toString() {
    return 'Restaurant(id: $id, name: $name, slug: $slug, description: $description, imageUrl: $imageUrl, tagline: $tagline, logoUrl: $logoUrl, coverImages: $coverImages, cuisines: $cuisines, categories: $categories, priceRange: $priceRange, tags: $tags, status: $status, tier: $tier, address: $address, latitude: $latitude, longitude: $longitude, deliveryRadiusKm: $deliveryRadiusKm, openingHours: $openingHours, isOpenNow: $isOpenNow, isTemporarilyClosed: $isTemporarilyClosed, nextOpeningTime: $nextOpeningTime, nextClosingTime: $nextClosingTime, deliveryFee: $deliveryFee, deliveryTimeMin: $deliveryTimeMin, deliveryTimeMax: $deliveryTimeMax, minimumOrderAmount: $minimumOrderAmount, offersDelivery: $offersDelivery, offersPickup: $offersPickup, offersCatering: $offersCatering, orderTypes: $orderTypes, rating: $rating, reviewCount: $reviewCount, foodRating: $foodRating, deliveryRating: $deliveryRating, packagingRating: $packagingRating, dietaryOptions: $dietaryOptions, amenities: $amenities, acceptsCustomRequests: $acceptsCustomRequests, hasAlcohol: $hasAlcohol, isChain: $isChain, isSponsored: $isSponsored, acceptedPaymentMethods: $acceptedPaymentMethods, activePromotions: $activePromotions, menuCategories: $menuCategories, popularItemIds: $popularItemIds, phoneNumber: $phoneNumber, websiteUrl: $websiteUrl, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, ownerId: $ownerId, reviews: $reviews)';
  }
}

/// @nodoc
abstract mixin class _$RestaurantCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$RestaurantCopyWith(
          _Restaurant value, $Res Function(_Restaurant) _then) =
      __$RestaurantCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String description,
      String imageUrl,
      String? tagline,
      String? logoUrl,
      List<String> coverImages,
      List<CuisineType> cuisines,
      List<String> categories,
      PriceRange priceRange,
      List<String> tags,
      RestaurantStatus status,
      RestaurantTier? tier,
      RestaurantAddress address,
      double? latitude,
      double? longitude,
      double deliveryRadiusKm,
      List<RestaurantOpeningHours> openingHours,
      bool isOpenNow,
      bool isTemporarilyClosed,
      DateTime? nextOpeningTime,
      DateTime? nextClosingTime,
      double deliveryFee,
      double deliveryTimeMin,
      double deliveryTimeMax,
      double? minimumOrderAmount,
      bool offersDelivery,
      bool offersPickup,
      bool offersCatering,
      List<OrderType> orderTypes,
      double rating,
      int reviewCount,
      double? foodRating,
      double? deliveryRating,
      double? packagingRating,
      List<RestaurantDietaryPreference> dietaryOptions,
      List<Amenity> amenities,
      bool acceptsCustomRequests,
      bool hasAlcohol,
      bool isChain,
      bool isSponsored,
      List<PaymentMethod> acceptedPaymentMethods,
      List<RestaurantPromotion> activePromotions,
      List<RestaurantMenuCategory> menuCategories,
      List<String> popularItemIds,
      String phoneNumber,
      String? websiteUrl,
      String? email,
      DateTime createdAt,
      DateTime updatedAt,
      String? ownerId,
      List<Review> reviews});

  @override
  $RestaurantAddressCopyWith<$Res> get address;
}

/// @nodoc
class __$RestaurantCopyWithImpl<$Res> implements _$RestaurantCopyWith<$Res> {
  __$RestaurantCopyWithImpl(this._self, this._then);

  final _Restaurant _self;
  final $Res Function(_Restaurant) _then;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? tagline = freezed,
    Object? logoUrl = freezed,
    Object? coverImages = null,
    Object? cuisines = null,
    Object? categories = null,
    Object? priceRange = null,
    Object? tags = null,
    Object? status = null,
    Object? tier = freezed,
    Object? address = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? deliveryRadiusKm = null,
    Object? openingHours = null,
    Object? isOpenNow = null,
    Object? isTemporarilyClosed = null,
    Object? nextOpeningTime = freezed,
    Object? nextClosingTime = freezed,
    Object? deliveryFee = null,
    Object? deliveryTimeMin = null,
    Object? deliveryTimeMax = null,
    Object? minimumOrderAmount = freezed,
    Object? offersDelivery = null,
    Object? offersPickup = null,
    Object? offersCatering = null,
    Object? orderTypes = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? foodRating = freezed,
    Object? deliveryRating = freezed,
    Object? packagingRating = freezed,
    Object? dietaryOptions = null,
    Object? amenities = null,
    Object? acceptsCustomRequests = null,
    Object? hasAlcohol = null,
    Object? isChain = null,
    Object? isSponsored = null,
    Object? acceptedPaymentMethods = null,
    Object? activePromotions = null,
    Object? menuCategories = null,
    Object? popularItemIds = null,
    Object? phoneNumber = null,
    Object? websiteUrl = freezed,
    Object? email = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? ownerId = freezed,
    Object? reviews = null,
  }) {
    return _then(_Restaurant(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: freezed == tagline
          ? _self.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _self.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImages: null == coverImages
          ? _self._coverImages
          : coverImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cuisines: null == cuisines
          ? _self._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<CuisineType>,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      priceRange: null == priceRange
          ? _self.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRange,
      tags: null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as RestaurantStatus,
      tier: freezed == tier
          ? _self.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as RestaurantTier?,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as RestaurantAddress,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryRadiusKm: null == deliveryRadiusKm
          ? _self.deliveryRadiusKm
          : deliveryRadiusKm // ignore: cast_nullable_to_non_nullable
              as double,
      openingHours: null == openingHours
          ? _self._openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<RestaurantOpeningHours>,
      isOpenNow: null == isOpenNow
          ? _self.isOpenNow
          : isOpenNow // ignore: cast_nullable_to_non_nullable
              as bool,
      isTemporarilyClosed: null == isTemporarilyClosed
          ? _self.isTemporarilyClosed
          : isTemporarilyClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      nextOpeningTime: freezed == nextOpeningTime
          ? _self.nextOpeningTime
          : nextOpeningTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextClosingTime: freezed == nextClosingTime
          ? _self.nextClosingTime
          : nextClosingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryFee: null == deliveryFee
          ? _self.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryTimeMin: null == deliveryTimeMin
          ? _self.deliveryTimeMin
          : deliveryTimeMin // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryTimeMax: null == deliveryTimeMax
          ? _self.deliveryTimeMax
          : deliveryTimeMax // ignore: cast_nullable_to_non_nullable
              as double,
      minimumOrderAmount: freezed == minimumOrderAmount
          ? _self.minimumOrderAmount
          : minimumOrderAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      offersDelivery: null == offersDelivery
          ? _self.offersDelivery
          : offersDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      offersPickup: null == offersPickup
          ? _self.offersPickup
          : offersPickup // ignore: cast_nullable_to_non_nullable
              as bool,
      offersCatering: null == offersCatering
          ? _self.offersCatering
          : offersCatering // ignore: cast_nullable_to_non_nullable
              as bool,
      orderTypes: null == orderTypes
          ? _self._orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<OrderType>,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _self.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      foodRating: freezed == foodRating
          ? _self.foodRating
          : foodRating // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryRating: freezed == deliveryRating
          ? _self.deliveryRating
          : deliveryRating // ignore: cast_nullable_to_non_nullable
              as double?,
      packagingRating: freezed == packagingRating
          ? _self.packagingRating
          : packagingRating // ignore: cast_nullable_to_non_nullable
              as double?,
      dietaryOptions: null == dietaryOptions
          ? _self._dietaryOptions
          : dietaryOptions // ignore: cast_nullable_to_non_nullable
              as List<RestaurantDietaryPreference>,
      amenities: null == amenities
          ? _self._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
      acceptsCustomRequests: null == acceptsCustomRequests
          ? _self.acceptsCustomRequests
          : acceptsCustomRequests // ignore: cast_nullable_to_non_nullable
              as bool,
      hasAlcohol: null == hasAlcohol
          ? _self.hasAlcohol
          : hasAlcohol // ignore: cast_nullable_to_non_nullable
              as bool,
      isChain: null == isChain
          ? _self.isChain
          : isChain // ignore: cast_nullable_to_non_nullable
              as bool,
      isSponsored: null == isSponsored
          ? _self.isSponsored
          : isSponsored // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptedPaymentMethods: null == acceptedPaymentMethods
          ? _self._acceptedPaymentMethods
          : acceptedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>,
      activePromotions: null == activePromotions
          ? _self._activePromotions
          : activePromotions // ignore: cast_nullable_to_non_nullable
              as List<RestaurantPromotion>,
      menuCategories: null == menuCategories
          ? _self._menuCategories
          : menuCategories // ignore: cast_nullable_to_non_nullable
              as List<RestaurantMenuCategory>,
      popularItemIds: null == popularItemIds
          ? _self._popularItemIds
          : popularItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      websiteUrl: freezed == websiteUrl
          ? _self.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ownerId: freezed == ownerId
          ? _self.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: null == reviews
          ? _self._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RestaurantAddressCopyWith<$Res> get address {
    return $RestaurantAddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }
}

// dart format on
