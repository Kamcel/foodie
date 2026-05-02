import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/foodie_tag.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';

class CuisineRow extends StatelessWidget {
  final List<CuisineType> cuisine;
  final TagSize? tagSize;

  final int maxVisible = 3;
  const CuisineRow({super.key, required this.cuisine, this.tagSize});

  @override
  Widget build(BuildContext context) {
    //Slice to maxVisible
    final visible = cuisine.take(maxVisible).toList();
    final overflow = cuisine.length - maxVisible;
    return Row(
      children: [
        ...visible.map((c) => Padding(
              padding: const EdgeInsets.only(right: AppDimensions.spaceXXS),
              child: FoodieTagFactories.cuisineType(c, size: tagSize!),
            )),
        if (overflow > 0)
          FoodieTag(
            label: '+$overflow',
            color: AppColors.secondary,
            size: tagSize!,
            variant: TagVariant.soft,
          )
      ],
    );
  }
}
