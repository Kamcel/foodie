import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/presentation/widgets/app_chip.dart';

enum FoodCategory {
  all('All'),
  burgers('Burgers'),
  pizza('Pizza'),
  sushi('Sushi'),
  mexican('Mexican'),
  chicken('Chicken'),
  healthy('Healthy'),
  pastries('Pastries'),
  desserts('Desserts'),
  local('Local'),
  breakfast('Breakfast'),
  lunch('Lunch'),
  dinner('Dinner');

  final String label;
  const FoodCategory(this.label);
}

class CategoryFilter extends StatelessWidget {
  final Function(FoodCategory?) onCategorySelected;
  final FoodCategory selectedFoodCategory;
  const CategoryFilter(
      {super.key,
      required this.onCategorySelected,
      required this.selectedFoodCategory});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppDimensions.spaceXXS,
      runSpacing: 2,
      children: FoodCategory.values.map((category) {
        return AppChip(
            label: category.label,
            isSelected: category == selectedFoodCategory,
            onSelected: (_) => onCategorySelected(category));
      }).toList(),
    );
  }
}
