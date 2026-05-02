import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';

class RestaurantCuisineWidget extends StatelessWidget {
  final CuisineType cuisineType;
  final VoidCallback onTap;
  final bool isSelected;
  const RestaurantCuisineWidget(
      {super.key,
      required this.cuisineType,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppDimensions.spaceSM),
        child: Container(
          width: 120,
          padding: EdgeInsets.all(AppDimensions.spaceMD),
          decoration: BoxDecoration(
              color: isSelected
                  ? colors.primaryContainer
                  : colors.surfaceContainer,
              borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
              border: isSelected
                  ? Border.all(color: colors.primary, width: 2)
                  : null),
          child: Column(
            children: [
              Text(
                cuisineType.emoji,
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(height: AppDimensions.spaceXXS),
              Text(cuisineType.displayName)
            ],
          ),
        ),
      ),
    );
  }
}
