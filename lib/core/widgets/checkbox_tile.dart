import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

enum CheckBoxPosition { left, right }

class CheckboxTile extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final Widget? leading;
  final Color? activeColor;
  final CheckBoxPosition position;

  const CheckboxTile({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
    this.subtitle,
    this.trailing,
    this.activeColor,
    this.position = CheckBoxPosition.left,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(AppDimensions.spaceMD),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
        border: Border.all(
          color: colors.outlineVariant,
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (leading != null) ...[
            leading!,
            const SizedBox(
              width: AppDimensions.spaceSM,
            )
          ],
          if (position == CheckBoxPosition.left) ...[
            Checkbox(
              value: value,
              onChanged: (v) => onChanged(v ?? false),
              activeColor: activeColor ?? colors.primary,
            ),
            const SizedBox(width: AppDimensions.spaceSM),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: textTheme.bodyLarge,
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: AppDimensions.spaceXXS),
                  Text(
                    subtitle!,
                    style: textTheme.bodySmall,
                  ),
                ],
              ],
            ),
          ),
          if (position == CheckBoxPosition.right) ...[
            Checkbox(
              value: value,
              onChanged: (v) => onChanged(v ?? false),
              activeColor: activeColor ?? colors.primary,
            ),
            const SizedBox(width: AppDimensions.spaceSM),
          ],
          if (trailing != null) ...[
            const SizedBox(width: AppDimensions.spaceSM),
            trailing!,
          ],
        ],
      ),
    );
  }
}
