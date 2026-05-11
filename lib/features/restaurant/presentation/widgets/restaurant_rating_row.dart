import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';

class RestaurantRatingRow extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantRatingRow({super.key, required this.restaurant});

  String _formatCount(int count) {
    if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}k';
    }
    return count.toString();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppDimensions.spaceSM),
      decoration: BoxDecoration(
        border: BoxBorder.fromSTEB(
          top: BorderSide(width: 0.3, color: colors.onSurfaceVariant),
          bottom: BorderSide(width: 0.4, color: colors.onSurfaceVariant),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  restaurant.rating.toString(),
                  style: textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: AppDimensions.spaceXXS,
                ),
                Text(
                  '${_formatCount(restaurant.reviewCount)} ratings',
                  style: textTheme.bodySmall
                      ?.copyWith(color: colors.onSurfaceVariant),
                )
              ],
            ),
          ),
          VerticalDivider(
              width: 1, thickness: 0.5, color: colors.onSurfaceVariant),
          Expanded(
            child: Column(
              children: [
                Text(
                  '${restaurant.deliveryTimeMin.toInt()}-${restaurant.deliveryTimeMax.toInt()} min',
                  style: textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: AppDimensions.spaceXXS,
                ),
                Text(
                  'Delivery',
                  style: textTheme.bodySmall
                      ?.copyWith(color: colors.onSurfaceVariant),
                )
              ],
            ),
          ),
          VerticalDivider(
              width: 1, thickness: 0.5, color: colors.onSurfaceVariant),
          Expanded(
            child: Column(
              children: [
                Text(
                  '0.4 mi',
                  style: textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: AppDimensions.spaceXXS,
                ),
                Text(
                  'Away',
                  style: textTheme.bodySmall
                      ?.copyWith(color: colors.onSurfaceVariant),
                )
              ],
            ),
          ),
          VerticalDivider(
              width: 1, thickness: 0.5, color: colors.onSurfaceVariant),
          Expanded(
            child: Column(
              children: [
                Text(
                  restaurant.deliveryFee == 0
                      ? 'Free'
                      : 'N${restaurant.deliveryFee}',
                  style: textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: AppDimensions.spaceXXS,
                ),
                Text(
                  'Delivery',
                  style: textTheme.bodySmall
                      ?.copyWith(color: colors.onSurfaceVariant),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
