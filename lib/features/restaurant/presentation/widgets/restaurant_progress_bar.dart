import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class RestaurantProgressBar extends StatelessWidget {
  final int number;
  final double percentage;
  const RestaurantProgressBar(
      {super.key, required this.number, required this.percentage});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Text('$number', style: textTheme.bodySmall),
        SizedBox(
          width: AppDimensions.spaceXXS,
        ),
        Expanded(
          child: SizedBox(
            height: 10,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(AppDimensions.radiusLG),
              value: percentage / 100,
              color: colors.primary,
              backgroundColor: colors.surfaceContainerHighest,
            ),
          ),
        ),
        SizedBox(
          width: AppDimensions.spaceXXS,
        ),
        Text(
            '${percentage.isNaN || percentage.isFinite ? 0 : percentage.toInt()}%',
            style: textTheme.bodySmall)
      ],
    );
  }
}
