import 'package:flutter/material.dart';

class RestaurantTag extends StatelessWidget {
  final String label;
  final IconData? icon;
  const RestaurantTag({
    super.key,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
          color: colors.onSurface, borderRadius: BorderRadius.circular(4)),
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 16,
              color: colors.onPrimary,
            ),
            const SizedBox(width: 4),
          ],
          Text(label,
              style: textTheme.bodySmall?.copyWith(color: colors.onPrimary))
        ],
      ),
    );
  }
}
