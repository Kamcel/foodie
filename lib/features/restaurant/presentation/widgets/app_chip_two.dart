import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class AppChipTwo extends StatelessWidget {
  final String label;
  final Icon? icon;
  final bool isSelected;
  final Function(bool) onSelected;

  const AppChipTwo(
      {super.key,
      required this.label,
      this.icon,
      required this.isSelected,
      required this.onSelected});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.spaceXXS),
      child: ChoiceChip(
        label: Text(
          label,
          style: textTheme.bodyMedium?.copyWith(
              color: isSelected ? colors.onPrimary : colors.primary,
              fontWeight: FontWeight.w600),
        ),
        visualDensity: VisualDensity.compact,
        showCheckmark: false,
        avatar: icon,
        selected: isSelected,
        selectedColor: colors.primary,
        onSelected: onSelected,
        backgroundColor: colors.surfaceContainer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM)),
      ),
    );
  }
}
