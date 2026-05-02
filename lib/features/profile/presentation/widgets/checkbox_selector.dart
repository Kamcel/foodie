import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class CheckboxSelector extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String title;
  final Color? activeColor;

  const CheckboxSelector(
      {super.key,
      required this.value,
      required this.onChanged,
      required this.title,
      this.activeColor});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spaceSM,
          vertical: AppDimensions.spaceXS,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          border: Border.all(
            color: value ? colors.primary : colors.outlineVariant,
            width: value ? 2 : 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
              value: value,
              onChanged: (v) => onChanged(v ?? false),
              activeColor: activeColor ?? colors.primary,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const SizedBox(width: AppDimensions.spaceXS),
            Expanded(
              child: Text(
                title,
                style: textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
