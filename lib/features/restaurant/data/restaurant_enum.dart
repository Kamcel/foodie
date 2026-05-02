import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// ==================== RESTAURANT STATUS ====================

enum RestaurantStatus {
  @JsonValue('active')
  active('Open Now', '🟢', AppColors.success),
  @JsonValue('pending')
  pending('Coming Soon', '🕐', AppColors.info),
  @JsonValue('suspended')
  suspended('Temporarily Unavailable', '⚠️', AppColors.warning),
  @JsonValue('closed')
  closed('Permanently Closed', '🔴', AppColors.error),
  @JsonValue('maintenance')
  maintenance('Under Maintenance', '🔧', AppColors.secondary),
  @JsonValue('busy')
  busy('Busy', '🔥', AppColors.warning);

  final String displayName;
  final String emoji;
  final Color color;
  const RestaurantStatus(this.displayName, this.emoji, this.color);

  bool get isOrderable => this == RestaurantStatus.active;
}

// ==================== PRICE RANGE ====================

enum PriceRange {
  @JsonValue('budget')
  budget('Budget', '💰', 1, AppColors.success),
  @JsonValue('moderate')
  moderate('Moderate', '💵', 2, AppColors.info),
  @JsonValue('expensive')
  expensive('Expensive', '💳', 3, AppColors.warning),
  @JsonValue('luxury')
  luxury('Luxury', '💎', 4, AppColors.primary);

  final String label;
  final String emoji;
  final int level;
  final Color color;
  const PriceRange(this.label, this.emoji, this.level, this.color);

  /// Returns dollar signs e.g. '$', '$$', '$$$', '$$$$'
  String get dollarSign => '\$' * level;
}

// ==================== ORDER TYPE ====================

enum OrderType {
  @JsonValue('delivery')
  delivery('Delivery', '🛵', Icons.delivery_dining, AppColors.primary),
  @JsonValue('pickup')
  pickup('Pickup', '🛍️', Icons.shopping_bag, AppColors.info),
  @JsonValue('dineIn')
  dineIn('Dine-in', '🍽️', Icons.restaurant, AppColors.tertiary),
  @JsonValue('curbside')
  curbside('Curbside', '🚗', Icons.car_rental, AppColors.secondary),
  @JsonValue('driveThru')
  driveThru('Drive-thru', '🚘', Icons.fastfood, AppColors.warning);

  final String displayName;
  final String emoji;
  final IconData icon;
  final Color color;
  const OrderType(this.displayName, this.emoji, this.icon, this.color);
}

// ==================== PROMOTION TYPE ====================

enum PromotionType {
  @JsonValue('percentageOff')
  percentageOff('% Off', '🏷️', AppColors.error, true),
  @JsonValue('fixedAmountOff')
  fixedAmountOff('₦ Off', '💸', AppColors.primary, true),
  @JsonValue('buyOneGetOne')
  buyOneGetOne('BOGO', '🎁', AppColors.tertiary, false),
  @JsonValue('freeDelivery')
  freeDelivery('Free Delivery', '🛵', AppColors.info, false),
  @JsonValue('freeItem')
  freeItem('Free Item', '🎀', AppColors.success, false),
  @JsonValue('bundleDeal')
  bundleDeal('Bundle', '📦', AppColors.secondary, false),
  @JsonValue('firstOrder')
  firstOrder('First Order', '🌟', AppColors.warning, true);

  final String displayName;
  final String emoji;
  final Color color;
  final bool requiresCode;
  const PromotionType(
      this.displayName, this.emoji, this.color, this.requiresCode);
}

// ==================== DAY OF WEEK ====================

enum DayOfWeek {
  @JsonValue('sunday')
  sunday('Sun', 'Sunday', '☀️', AppColors.warning),
  @JsonValue('monday')
  monday('Mon', 'Monday', '🌙', AppColors.secondary),
  @JsonValue('tuesday')
  tuesday('Tue', 'Tuesday', '🌤️', AppColors.info),
  @JsonValue('wednesday')
  wednesday('Wed', 'Wednesday', '🌥️', AppColors.tertiary),
  @JsonValue('thursday')
  thursday('Thu', 'Thursday', '⛅', AppColors.primary),
  @JsonValue('friday')
  friday('Fri', 'Friday', '🎉', AppColors.error),
  @JsonValue('saturday')
  saturday('Sat', 'Saturday', '🥳', AppColors.success);

  final String shortName;
  final String fullName;
  final String emoji;
  final Color color;
  const DayOfWeek(this.shortName, this.fullName, this.emoji, this.color);

  bool get isWeekend => this == DayOfWeek.saturday || this == DayOfWeek.sunday;
}

// ==================== DIETARY PREFERENCE ====================

enum DietaryPreference {
  @JsonValue('vegetarian')
  vegetarian('Vegetarian', '🥬', AppColors.tertiary),
  @JsonValue('vegan')
  vegan('Vegan', '🌱', AppColors.success),
  @JsonValue('glutenFree')
  glutenFree('Gluten-Free', '🌾', AppColors.warning),
  @JsonValue('halal')
  halal('Halal', '☪️', AppColors.info),
  @JsonValue('kosher')
  kosher('Kosher', '✡️', AppColors.primary),
  @JsonValue('dairyFree')
  dairyFree('Dairy-Free', '🥛', AppColors.secondary),
  @JsonValue('nutFree')
  nutFree('Nut-Free', '🥜', AppColors.error),
  @JsonValue('keto')
  keto('Keto', '🥑', AppColors.success),
  @JsonValue('paleo')
  paleo('Paleo', '🍖', AppColors.primary),
  @JsonValue('lowSodium')
  lowSodium('Low Sodium', '🧂', AppColors.info),
  @JsonValue('lowCarb')
  lowCarb('Low Carb', '🍞', AppColors.tertiary),
  @JsonValue('organic')
  organic('Organic', '🌿', AppColors.success);

  final String displayName;
  final String emoji;
  final Color color;
  const DietaryPreference(this.displayName, this.emoji, this.color);
}

// ==================== CUISINE TYPE ====================

enum CuisineType {
  @JsonValue('italian')
  italian('Italian', '🍝', AppColors.italian),
  @JsonValue('american')
  american('American', '🍔', AppColors.primary),
  @JsonValue('mexican')
  mexican('Mexican', '🌮', AppColors.error),
  @JsonValue('chinese')
  chinese('Chinese', '🥡', AppColors.chinese),
  @JsonValue('japanese')
  japanese('Japanese', '🍱', AppColors.info),
  @JsonValue('indian')
  indian('Indian', '🍛', AppColors.indian),
  @JsonValue('thai')
  thai('Thai', '🍜', AppColors.warning),
  @JsonValue('mediterranean')
  mediterranean('Mediterranean', '🥙', AppColors.tertiary),
  @JsonValue('french')
  french('French', '🥐', AppColors.secondary),
  @JsonValue('korean')
  korean('Korean', '🍚', AppColors.error),
  @JsonValue('vietnamese')
  vietnamese('Vietnamese', '🍲', AppColors.success),
  @JsonValue('greek')
  greek('Greek', '🥗', AppColors.tertiary),
  @JsonValue('middleEastern')
  middleEastern('Middle Eastern', '🧆', AppColors.warning),
  @JsonValue('african')
  african('African', '🫕', AppColors.primary),
  @JsonValue('nigerian')
  nigerian('Nigerian', '🥘', AppColors.nigerian),
  @JsonValue('fastFood')
  fastFood('Fast Food', '🍟', AppColors.error),
  @JsonValue('pizza')
  pizza('Pizza', '🍕', AppColors.italian),
  @JsonValue('burger')
  burger('Burgers', '🍔', AppColors.primary),
  @JsonValue('sushi')
  sushi('Sushi', '🍣', AppColors.info);

  final String displayName;
  final String emoji;
  final Color color;
  const CuisineType(this.displayName, this.emoji, this.color);
}

// ==================== MENU ITEM STATUS ====================

enum MenuItemStatus {
  @JsonValue('available')
  available('Available', '✅', AppColors.success, true),
  @JsonValue('soldOut')
  soldOut('Sold Out', '❌', AppColors.error, false),
  @JsonValue('comingSoon')
  comingSoon('Coming Soon', '🕐', AppColors.info, false),
  @JsonValue('discontinued')
  discontinued('Discontinued', '🚫', AppColors.secondary, false),
  @JsonValue('limitedTime')
  limitedTime('Limited Time', '⏳', AppColors.warning, true);

  final String displayName;
  final String emoji;
  final Color color;
  final bool isOrderable;
  const MenuItemStatus(
      this.displayName, this.emoji, this.color, this.isOrderable);
}

// ==================== CUSTOMIZATION TYPE ====================

enum CustomizationType {
  @JsonValue('singleSelect')
  singleSelect('Choose One', '🔘', AppColors.primary),
  @JsonValue('multiSelect')
  multiSelect('Choose Multiple', '☑️', AppColors.info),
  @JsonValue('quantity')
  quantity('Quantity', '🔢', AppColors.secondary),
  @JsonValue('text')
  text('Special Instructions', '✏️', AppColors.tertiary);

  final String displayName;
  final String emoji;
  final Color color;
  const CustomizationType(this.displayName, this.emoji, this.color);
}

// ==================== RATING CATEGORY ====================

enum RatingCategory {
  @JsonValue('overall')
  overall('Overall', '⭐', AppColors.warning),
  @JsonValue('food')
  food('Food Quality', '🍴', AppColors.primary),
  @JsonValue('delivery')
  delivery('Delivery', '🛵', AppColors.info),
  @JsonValue('packaging')
  packaging('Packaging', '📦', AppColors.secondary),
  @JsonValue('value')
  value('Value', '💰', AppColors.success);

  final String displayName;
  final String emoji;
  final Color color;
  const RatingCategory(this.displayName, this.emoji, this.color);
}

// ==================== PAYMENT METHOD ====================

enum PaymentMethod {
  @JsonValue('creditCard')
  creditCard('Credit Card', '💳', Icons.credit_card, AppColors.primary),
  @JsonValue('debitCard')
  debitCard('Debit Card', '💳', Icons.credit_card, AppColors.info),
  @JsonValue('cash')
  cash('Cash', '💵', Icons.money, AppColors.success),
  @JsonValue('digitalWallet')
  digitalWallet('Digital Wallet', '📱', Icons.wallet, AppColors.tertiary),
  @JsonValue('cryptocurrency')
  cryptocurrency('Crypto', '🪙', Icons.currency_bitcoin, AppColors.warning),
  @JsonValue('bankTransfer')
  bankTransfer(
      'Bank Transfer', '🏦', Icons.account_balance, AppColors.secondary),
  @JsonValue('giftCard')
  giftCard('Gift Card', '🎁', Icons.card_giftcard, AppColors.error);

  final String displayName;
  final String emoji;
  final IconData icon;
  final Color color;
  const PaymentMethod(this.displayName, this.emoji, this.icon, this.color);
}

// ==================== DELIVERY PRIORITY ====================

enum DeliveryPriority {
  @JsonValue('standard')
  standard('Standard', '🚚', AppColors.secondary, 1.0, Duration(minutes: 35)),
  @JsonValue('express')
  express('Express', '⚡', AppColors.warning, 1.5, Duration(minutes: 20)),
  @JsonValue('scheduled')
  scheduled('Scheduled', '🗓️', AppColors.info, 1.0, null),
  @JsonValue('asap')
  asap('ASAP', '🚀', AppColors.error, 2.0, Duration(minutes: 15));

  final String displayName;
  final String emoji;
  final Color color;
  final double feeMultiplier;
  final Duration? timeEstimate;
  const DeliveryPriority(this.displayName, this.emoji, this.color,
      this.feeMultiplier, this.timeEstimate);
}

// ==================== RESTAURANT TIER ====================

enum RestaurantTier {
  @JsonValue('localFavorite')
  localFavorite('Local Favorite', '⭐', '⭐ Local Fav', AppColors.warning),
  @JsonValue('popular')
  popular('Popular', '🔥', '🔥 Popular', AppColors.error),
  @JsonValue('newArrival')
  newArrival('New', '✨', '✨ New', AppColors.info),
  @JsonValue('exclusive')
  exclusive('Exclusive', '💎', '💎 Exclusive', AppColors.primary),
  @JsonValue('chain')
  chain('Chain', '🏪', '🏪 Chain', AppColors.secondary),
  @JsonValue('premium')
  premium('Premium', '👑', '👑 Premium', AppColors.tertiary);

  final String displayName;
  final String emoji;
  final String badge;
  final Color color;
  const RestaurantTier(this.displayName, this.emoji, this.badge, this.color);
}

// ==================== NOTIFICATION TYPE ====================

enum NotificationType {
  @JsonValue('orderConfirmation')
  orderConfirmation('Order Confirmed', '✅', AppColors.success, true),
  @JsonValue('orderPreparing')
  orderPreparing('Preparing', '👨‍🍳', AppColors.warning, true),
  @JsonValue('orderReady')
  orderReady('Ready for Pickup', '🛍️', AppColors.info, true),
  @JsonValue('driverAssigned')
  driverAssigned('Driver Assigned', '🛵', AppColors.primary, true),
  @JsonValue('driverNearby')
  driverNearby('Driver Nearby', '📍', AppColors.error, true),
  @JsonValue('orderDelivered')
  orderDelivered('Delivered', '🎉', AppColors.success, true),
  @JsonValue('orderCancelled')
  orderCancelled('Cancelled', '❌', AppColors.error, true),
  @JsonValue('promotion')
  promotion('Promo', '🏷️', AppColors.warning, false),
  @JsonValue('restaurantUpdate')
  restaurantUpdate('Update', '📢', AppColors.secondary, false),
  @JsonValue('reviewReminder')
  reviewReminder('Review', '⭐', AppColors.tertiary, false);

  final String displayName;
  final String emoji;
  final Color color;
  final bool isOrderRelated;
  const NotificationType(
      this.displayName, this.emoji, this.color, this.isOrderRelated);
}

// ==================== CANCELLATION REASON ====================

enum CancellationReason {
  @JsonValue('customerRequest')
  customerRequest('Customer Request', '🙋', AppColors.info, true),
  @JsonValue('restaurantUnavailable')
  restaurantUnavailable('Restaurant Closed', '🚪', AppColors.secondary, false),
  @JsonValue('outOfStock')
  outOfStock('Item Unavailable', '📭', AppColors.warning, false),
  @JsonValue('deliveryIssue')
  deliveryIssue('Delivery Issue', '🛵', AppColors.error, false),
  @JsonValue('paymentFailed')
  paymentFailed('Payment Failed', '💳', AppColors.error, true),
  @JsonValue('fraudSuspected')
  fraudSuspected('Fraud Alert', '🚨', AppColors.error, false),
  @JsonValue('weatherDelay')
  weatherDelay('Weather Delay', '🌧️', AppColors.warning, false),
  @JsonValue('driverUnavailable')
  driverUnavailable('No Drivers', '😔', AppColors.secondary, false),
  @JsonValue('customerNoShow')
  customerNoShow('Customer Unavailable', '📵', AppColors.warning, true),
  @JsonValue('other')
  other('Other', '❓', AppColors.secondary, false);

  final String displayName;
  final String emoji;
  final Color color;
  final bool isCustomerFault;
  const CancellationReason(
      this.displayName, this.emoji, this.color, this.isCustomerFault);
}

// ==================== Amenities ====================
enum Amenity {
  @JsonValue('freeWifi')
  freeWifi('Free WiFi', '📶'),
  @JsonValue('outdoorSeating')
  outdoorSeating('Outdoor Seating', '🌳'),
  @JsonValue('parking')
  parking('Parking', '🅿️'),
  @JsonValue('wheelchairAccessible')
  wheelchairAccessible('Wheelchair Accessible', '♿'),
  @JsonValue('airConditioning')
  airConditioning('Air Conditioning', '❄️'),
  @JsonValue('delivery')
  delivery('Delivery', '🚚'),
  @JsonValue('pickup')
  pickup('Pickup', '🏃'),
  @JsonValue('reservations')
  reservations('Reservations', '📅'),
  @JsonValue('familyFriendly')
  familyFriendly('Family Friendly', '👨‍👩‍👧'),
  @JsonValue('petFriendly')
  petFriendly('Pet Friendly', '🐕'),
  @JsonValue('takeout')
  takeout('Takeout', '🥡'),
  @JsonValue('liveMusic')
  liveMusic('Live Music', '🎵');

  final String displayName;
  final String emoji;
  const Amenity(this.displayName, this.emoji);
}
