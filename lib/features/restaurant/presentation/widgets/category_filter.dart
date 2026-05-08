import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/presentation/widgets/app_chip.dart';

import 'package:foodie/features/restaurant/data/restaurant_enum.dart';

class CategoryFilter extends StatelessWidget {
  final Function(CuisineType?) onCategorySelected;
  final CuisineType? selectedCuisineType;
  const CategoryFilter({
    super.key,
    required this.onCategorySelected,
    required this.selectedCuisineType,
  });

  @override
  Widget build(BuildContext context) {
    final List<({String label, CuisineType? type})> categories = [
      (label: 'All', type: null),
      ...CuisineType.values
          .take(10)
          .map((cuisine) => (label: cuisine.displayName, type: cuisine)),
    ];

    return Wrap(
      spacing: AppDimensions.spaceXXS,
      runSpacing: 2,
      children: categories.map((category) {
        return AppChip(
          label: category.label,
          isSelected: category.type == selectedCuisineType,
          onSelected: (_) => onCategorySelected(category.type),
        );
      }).toList(),
    );
  }
}
