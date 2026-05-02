// lib/features/restaurant/presentation/widgets/quick_filter_chips.dart
import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class QuickFilterChips extends StatefulWidget {
  final Function(String?) onFilterSelected;
  const QuickFilterChips({super.key, required this.onFilterSelected});

  @override
  State<QuickFilterChips> createState() => _QuickFilterChipsState();
}

class _QuickFilterChipsState extends State<QuickFilterChips> {
  String _selectedFilter = 'All';

  final List<String> _filters = [
    'All',
    'Fast Food',
    'Nigerian',
    'Pizza',
    'Ice Cream',
    'Burger',
    'Chinese',
    'African',
    'Coffee',
    'Dessert',
    'Breakfast',
    'Vegan',
  ];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Wrap(
      spacing: AppDimensions.spaceSM,
      runSpacing: AppDimensions.spaceSM,
      children: _filters.map((filter) {
        final isSelected = _selectedFilter == filter;

        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedFilter = filter;
            });
            widget.onFilterSelected(filter == 'All' ? null : filter);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.spaceMD,
              vertical: AppDimensions.spaceSM,
            ),
            decoration: BoxDecoration(
              color: isSelected ? colors.primary : colors.surfaceContainer,
              borderRadius: BorderRadius.circular(100),
              border:
                  isSelected ? null : Border.all(color: colors.outlineVariant),
            ),
            child: Text(
              filter,
              style: TextStyle(
                color: isSelected ? colors.onPrimary : colors.onSurface,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
