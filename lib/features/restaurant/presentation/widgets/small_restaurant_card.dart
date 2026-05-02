import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/foodie_tag.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/presentation/widgets/cuisine_row.dart';
import 'package:foodie/features/restaurant/presentation/widgets/image_placeholder.dart';
import 'package:foodie/features/restaurant/presentation/widgets/rating_pill.dart';

class SmallRestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final VoidCallback? onTap;
  const SmallRestaurantCard({super.key, required this.restaurant, this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final r = restaurant;
    return GestureDetector(
      onTap: r.status.isOrderable ? onTap : null,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spaceMD, vertical: AppDimensions.spaceSM),
        decoration: BoxDecoration(
            color: colors.surfaceContainer,
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withValues(alpha: 0.07),
                  blurRadius: 8,
                  offset: const Offset(0, 2))
            ]),
        child: Row(
          children: [
            //Thumbnail
            ClipRRect(
              borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
              child: Image.network(
                r.imageUrl,
                width: 64,
                height: 64,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => ImagePlaceholder(size: 64),
              ),
            ),
            const SizedBox(
              width: AppDimensions.spaceSM,
            ),
            //info
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      r.name,
                      style: (textTheme.titleSmall ?? const TextStyle())
                          .copyWith(fontWeight: FontWeight.w800),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                    RatingPill(
                      rating: r.rating,
                      reviewCount: r.reviewCount,
                      compact: true,
                    )
                  ],
                ),
                const SizedBox(
                  height: AppDimensions.spaceXXS,
                ),
                Wrap(
                  spacing: 2,
                  runSpacing: 2,
                  children: [
                    FoodieTagFactories.restaurantStatus(r.status,
                        size: TagSize.small),
                    const SizedBox(
                      width: AppDimensions.spaceXXS,
                    ),
                    CuisineRow(
                      cuisine: r.cuisines,
                      tagSize: TagSize.small,
                    ),
                    const SizedBox(
                      width: AppDimensions.spaceXXS,
                    ),
                    Row(
                      children: [
                        FoodieTagFactories.priceRange(r.priceRange,
                            size: TagSize.small, showDollarSign: true),
                        const Spacer(),
                        Text(
                          '${r.deliveryTimeMin}-${r.deliveryTimeMax} min',
                          style: textTheme.bodySmall,
                        )
                      ],
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
