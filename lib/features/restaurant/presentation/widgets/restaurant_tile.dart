import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';

class RestaurantTile extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantTile({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          restaurant.name,
          style: textTheme.displayMedium,
        ),
        SizedBox(height: AppDimensions.spaceXS),
        Text(
          'Category • Food • Sides • Drinks',
          style: textTheme.bodyMedium?.copyWith(color: colors.onSurfaceVariant),
        )
      ],
    );
  }
}
