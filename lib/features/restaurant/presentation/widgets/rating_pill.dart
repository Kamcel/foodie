import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class RatingPill extends StatelessWidget {
  final double rating;
  final int reviewCount;
  final bool compact;
  const RatingPill(
      {super.key,
      required this.rating,
      required this.reviewCount,
      this.compact = false});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spaceXS, vertical: AppDimensions.spaceXXS),
      decoration: BoxDecoration(
          color: AppColors.warning.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(AppDimensions.radiusXS)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.amber,
            size: 12,
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            rating.toStringAsFixed(1),
            style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
          ),
          if (!compact) ...[
            const SizedBox(
              width: 2,
            ),
            Text(
              '(${_formattedCount(reviewCount)})',
              style: textTheme.bodyMedium,
            )
          ]
        ],
      ),
    );
  }

  String _formattedCount(int count) =>
      count >= 1000 ? '${(count / 1000).toStringAsFixed(1)}k' : '$count';
}
