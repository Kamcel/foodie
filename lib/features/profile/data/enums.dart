import 'package:freezed_annotation/freezed_annotation.dart';

// Spice Level
enum SpiceLevel {
  @JsonValue('mild')
  mild('🌶 Mild'),
  @JsonValue('medium')
  medium('🌶🌶 Medium'),
  @JsonValue('hot')
  hot('🌶🌶🌶 Hot'),
  @JsonValue('extra_hot')
  extraHot('🌶🌶🌶🌶 Extra Hot');

  final String displayName;
  const SpiceLevel(this.displayName);
}

// Dietary Preferences
enum DietaryPreference {
  @JsonValue('vegetarian')
  vegetarian('Vegetarian'),
  @JsonValue('vegan')
  vegan('Vegan'),
  @JsonValue('gluten_free')
  glutenFree('Gluten Free'),
  @JsonValue('dairy_free')
  dairyFree('Dairy Free'),
  @JsonValue('keto')
  keto('Keto'),
  @JsonValue('paleo')
  paleo('Paleo'),
  @JsonValue('halal')
  halal('Halal'),
  @JsonValue('kosher')
  kosher('Kosher'),
  @JsonValue('low_carb')
  lowCarb('Low Carb'),
  @JsonValue('low_fat')
  lowFat('Low Fat'),
  @JsonValue('low_sugar')
  lowSugar('Low Sugar'),
  @JsonValue('nut_free')
  nutFree('Nut Free');

  final String displayName;
  const DietaryPreference(this.displayName);
}

// Allergies
enum Allergy {
  @JsonValue('peanuts')
  peanuts('Peanuts'),
  @JsonValue('tree_nuts')
  treeNuts('Tree Nuts'),
  @JsonValue('milk')
  milk('Milk'),
  @JsonValue('eggs')
  eggs('Eggs'),
  @JsonValue('wheat')
  wheat('Wheat'),
  @JsonValue('soy')
  soy('Soy'),
  @JsonValue('fish')
  fish('Fish'),
  @JsonValue('shellfish')
  shellfish('Shellfish'),
  @JsonValue('sesame')
  sesame('Sesame');

  final String displayName;
  const Allergy(this.displayName);
}

// Favorite Cuisines
enum Cuisine {
  @JsonValue('african')
  african('African', '🍲'),
  @JsonValue('american')
  american('American', '🍔'),
  @JsonValue('asian')
  asian('Asian', '🍜'),
  @JsonValue('chinese')
  chinese('Chinese', '🥡'),
  @JsonValue('french')
  french('French', '🥐'),
  @JsonValue('indian')
  indian('Indian', '🍛'),
  @JsonValue('italian')
  italian('Italian', '🍕'),
  @JsonValue('japanese')
  japanese('Japanese', '🍱'),
  @JsonValue('korean')
  korean('Korean', '🥩'),
  @JsonValue('lebanese')
  lebanese('Lebanese', '🧆'),
  @JsonValue('mediterranean')
  mediterranean('Mediterranean', '🫒'),
  @JsonValue('mexican')
  mexican('Mexican', '🌮'),
  @JsonValue('middle_eastern')
  middleEastern('Middle Eastern', '🥙'),
  @JsonValue('nigerian')
  nigerian('Nigerian', '🥘'),
  @JsonValue('thai')
  thai('Thai', '🫕'),
  @JsonValue('vietnamese')
  vietnamese('Vietnamese', '🍃');

  final String displayName;
  final String emoji;
  const Cuisine(this.displayName, this.emoji);
}
