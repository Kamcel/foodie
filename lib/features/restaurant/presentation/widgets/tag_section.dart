import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:foodie/core/widgets/foodie_tag.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';

class TagSection extends StatelessWidget {
  final Restaurant restaurant;
  const TagSection({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final r = restaurant;
    final tags = <FoodieTag>[];

    // 1. Price Range
    tags.add(FoodieTagFactories.priceRange(
      r.priceRange,
      size: TagSize.small,
      showDollarSign: true,
    ));

    // 2. Dietary options
    tags.addAll(r.dietaryOptions.map(
      (d) => FoodieTagFactories.dietaryPreference(d, size: TagSize.small),
    ));

    // 3. Payment methods
    tags.addAll(r.acceptedPaymentMethods.map(
      (pay) => FoodieTagFactories.paymentMethod(pay, size: TagSize.small),
    ));

    // 4. Amenities (enum)
    tags.addAll(r.amenities.map((amen) => FoodieTag(
          label: amen.displayName,
          emoji: amen.emoji,
          color: AppColors.secondary,
          size: TagSize.small,
          variant: TagVariant.soft,
        )));

    // 5. Take first 3 tags
    final visibleTags = tags.take(3).toList();

    if (visibleTags.isEmpty) return const SizedBox.shrink();

    return TagRow(
      tags: visibleTags,
      scrollable: false,
      spacing: 5,
    );
  }
}
