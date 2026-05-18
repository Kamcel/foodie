// lib/core/enums/dish_enums.dart
import 'package:freezed_annotation/freezed_annotation.dart';

// ==================== DISH CATEGORY (Menu Tabs) ====================

enum DishCategory {
  @JsonValue('popular')
  popular('Popular', '⭐'),
  @JsonValue('burgers')
  burgers('Burgers', '🍔'),
  @JsonValue('pizza')
  pizza('Pizza', '🍕'),
  @JsonValue('sides')
  sides('Sides', '🍟'),
  @JsonValue('drinks')
  drinks('Drinks', '🥤'),
  @JsonValue('desserts')
  desserts('Desserts', '🍰'),
  @JsonValue('breakfast')
  breakfast('Breakfast', '🍳'),
  @JsonValue('mains')
  mains('Mains', '🍽️'),
  @JsonValue('snacks')
  snacks('Snacks', '🍿'),
  @JsonValue('soup')
  soup('Soup', '🍜'),
  @JsonValue('salads')
  salads('Salads', '🥗'),
  @JsonValue('seafood')
  seafood('Seafood', '🦐'),
  @JsonValue('specials')
  specials('Chef Specials', '👨‍🍳'),
  @JsonValue('combo')
  combo('Combos', '🎁'),
  @JsonValue('wraps')
  wraps('Wraps', '🌯'),
  @JsonValue('rice')
  rice('Rice Dishes', '🍚'),
  @JsonValue('pasta')
  pasta('Pasta', '🍝'),
  @JsonValue('grills')
  grills('Grills', '🔥');

  final String displayName;
  final String emoji;
  const DishCategory(this.displayName, this.emoji);
}

// ==================== DISH STATUS ====================

enum DishStatus {
  @JsonValue('available')
  available('Available', true),
  @JsonValue('soldOut')
  soldOut('Sold Out', false),
  @JsonValue('comingSoon')
  comingSoon('Coming Soon', false),
  @JsonValue('limitedTime')
  limitedTime('Limited Time', true),
  @JsonValue('discontinued')
  discontinued('Discontinued', false);

  final String displayName;
  final bool isOrderable;
  const DishStatus(this.displayName, this.isOrderable);
}

// ==================== PORTION SIZE ====================

enum PortionSize {
  @JsonValue('small')
  small('Small', 'S', 0.0),
  @JsonValue('medium')
  medium('Medium', 'M', 2.0),
  @JsonValue('large')
  large('Large', 'L', 4.0),
  @JsonValue('extraLarge')
  extraLarge('Extra Large', 'XL', 6.0),
  @JsonValue('family')
  family('Family Size', 'FAM', 10.0);

  final String displayName;
  final String shortName;
  final double extraCharge;
  const PortionSize(this.displayName, this.shortName, this.extraCharge);
}

// ==================== CUSTOMIZATION TYPE ====================

enum CustomizationType {
  @JsonValue('singleSelect')
  singleSelect('Choose One'),
  @JsonValue('multiSelect')
  multiSelect('Choose Multiple'),
  @JsonValue('quantity')
  quantity('Quantity'),
  @JsonValue('text')
  text('Special Instructions');

  final String displayName;
  const CustomizationType(this.displayName);
}

// ==================== DISH SORT ====================

enum DishSortOption {
  @JsonValue('popular')
  popular('Most Popular', '⭐'),
  @JsonValue('priceLow')
  priceLow('Price: Low to High', '💰'),
  @JsonValue('priceHigh')
  priceHigh('Price: High to Low', '💎'),
  @JsonValue('rating')
  rating('Highest Rated', '🏆'),
  @JsonValue('newest')
  newest('Newest First', '🆕');

  final String displayName;
  final String emoji;
  const DishSortOption(this.displayName, this.emoji);
}

// ==================== DISH SPICE LEVEL ====================
// Note: Separate from profile SpiceLevel — this describes the dish,
// profile SpiceLevel describes the user's preference.

enum DishSpiceLevel {
  @JsonValue('none')
  none('Not Spicy', '😌'),
  @JsonValue('mild')
  mild('Mild', '🌶️'),
  @JsonValue('medium')
  medium('Medium', '🌶️🌶️'),
  @JsonValue('hot')
  hot('Hot', '🌶️🌶️🌶️'),
  @JsonValue('extraHot')
  extraHot('Extra Hot', '🌶️🌶️🌶️🌶️');

  final String displayName;
  final String emoji;
  const DishSpiceLevel(this.displayName, this.emoji);
}

// ==================== ALLERGEN ====================

enum Allergen {
  @JsonValue('gluten')
  gluten('Gluten', '🌾'),
  @JsonValue('dairy')
  dairy('Dairy', '🥛'),
  @JsonValue('eggs')
  eggs('Eggs', '🥚'),
  @JsonValue('nuts')
  nuts('Tree Nuts', '🌰'),
  @JsonValue('peanuts')
  peanuts('Peanuts', '🥜'),
  @JsonValue('shellfish')
  shellfish('Shellfish', '🦞'),
  @JsonValue('fish')
  fish('Fish', '🐟'),
  @JsonValue('soy')
  soy('Soy', '🫘'),
  @JsonValue('sesame')
  sesame('Sesame', '🌻'),
  @JsonValue('mustard')
  mustard('Mustard', '🌭'),
  @JsonValue('celery')
  celery('Celery', '🥬'),
  @JsonValue('sulphites')
  sulphites('Sulphites', '🍷');

  final String displayName;
  final String emoji;
  const Allergen(this.displayName, this.emoji);
}

// ==================== DISH DIETARY TAG ====================
// Note: Separate from profile DietaryPreference — this tags a dish,
// profile DietaryPreference describes what the user avoids.

enum DishDietaryTag {
  @JsonValue('vegetarian')
  vegetarian('Vegetarian', '🥬'),
  @JsonValue('vegan')
  vegan('Vegan', '🌱'),
  @JsonValue('glutenFree')
  glutenFree('Gluten Free', '🌾'),
  @JsonValue('halal')
  halal('Halal', '🥩'),
  @JsonValue('kosher')
  kosher('Kosher', '✡️'),
  @JsonValue('dairyFree')
  dairyFree('Dairy Free', '🥛'),
  @JsonValue('nutFree')
  nutFree('Nut Free', '🥜'),
  @JsonValue('keto')
  keto('Keto', '🥑'),
  @JsonValue('lowCalorie')
  lowCalorie('Low Calorie', '⚖️'),
  @JsonValue('organic')
  organic('Organic', '🌿'),
  @JsonValue('spicy')
  spicy('Spicy', '🌶️'),
  @JsonValue('new')
  newDish('New', '🆕'),
  @JsonValue('bestseller')
  bestseller('Bestseller', '🔥'),
  @JsonValue('chefSpecial')
  chefSpecial('Chef Special', '👨‍🍳');

  final String displayName;
  final String emoji;
  const DishDietaryTag(this.displayName, this.emoji);
}

// ==================== PREP TIME ====================

enum PrepTime {
  @JsonValue('instant')
  instant('Ready Now', 0),
  @JsonValue('quick')
  quick('5-10 min', 10),
  @JsonValue('standard')
  standard('15-20 min', 20),
  @JsonValue('slow')
  slow('25-35 min', 35),
  @JsonValue('madeToOrder')
  madeToOrder('Made to Order', 45);

  final String displayName;
  final int maxMinutes;
  const PrepTime(this.displayName, this.maxMinutes);
}
