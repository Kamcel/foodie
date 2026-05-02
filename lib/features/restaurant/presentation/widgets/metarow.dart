// Delivery time, ffe, and distance meta row
import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';

class Metarow extends StatelessWidget {
  final Restaurant restaurant;
  const Metarow({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final r = restaurant;
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Icon(Icons.access_time_rounded, size: AppDimensions.spaceSM),
        SizedBox(
          width: AppDimensions.spaceXXS,
        ),
        Text('${r.deliveryTimeMin}- ${r.deliveryTimeMax} min',
            style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500)),
        SizedBox(
          width: AppDimensions.spaceSM,
        ),
        Icon(Icons.delivery_dining_rounded, size: AppDimensions.spaceSM),
        SizedBox(
          width: AppDimensions.spaceXXS,
        ),
        Text(
          r.deliveryFee == 0.0
              ? 'Free delivery'
              : 'N${r.deliveryFee.toString()}',
          style: textTheme.bodySmall?.copyWith(
              color: r.deliveryFee == 0 ? AppColors.success : null,
              fontWeight: r.deliveryFee == 0 ? FontWeight.w500 : null),
        ),
        SizedBox(
          width: AppDimensions.spaceSM,
        ),
        Icon(Icons.location_on_rounded, size: AppDimensions.spaceSM),
        SizedBox(
          width: AppDimensions.spaceXXS,
        ),
        Text('${r.deliveryRadiusKm.toStringAsFixed(1)} km',
            style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500))
      ],
    );
  }
}
