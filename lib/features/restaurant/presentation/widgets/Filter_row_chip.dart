import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class FilterRowChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  const FilterRowChip(
      {super.key,
      required this.label,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spaceMD,
          vertical: AppDimensions.spaceSM,
        ),
        decoration: BoxDecoration(
          color: isSelected ? colors.primary : colors.surfaceContainer,
          borderRadius: BorderRadius.circular(100),
          border: isSelected ? null : Border.all(color: colors.outlineVariant),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? colors.onPrimary : colors.onSurface,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
