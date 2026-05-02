import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class CuisineCard extends StatelessWidget {
  final String displayName;
  final String emoji;
  final bool isSelected;
  final VoidCallback onTap;

  const CuisineCard(
      {super.key,
      required this.displayName,
      required this.emoji,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Material(
      borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.spaceLG,
              vertical: AppDimensions.spaceMD),
          decoration: BoxDecoration(
              color: isSelected
                  ? colors.primary.withValues(alpha: 0.1)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
              border: Border.all(
                  color: isSelected ? colors.primary : colors.outlineVariant,
                  width: isSelected ? 2 : 1)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                emoji,
                style: TextStyle(fontSize: 75),
              ),
              SizedBox(
                height: AppDimensions.spaceSM,
              ),
              Text(
                displayName,
                style: textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
