import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/foodie_tag.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/presentation/widgets/card_image.dart';
import 'package:foodie/features/restaurant/presentation/widgets/rating_pill.dart';

class MediumRestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;
  final bool isFavorited;
  const MediumRestaurantCard(
      {super.key,
      required this.restaurant,
      this.onTap,
      this.onFavoriteTap,
      required this.isFavorited});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final r = restaurant;
    return GestureDetector(
      onTap: r.status.isOrderable ? onTap : null,
      child: Container(
        width: 220,
        decoration: BoxDecoration(
            color: colors.surfaceContainer,
            borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withValues(alpha: 0.07),
                  blurRadius: AppDimensions.radiusMD,
                  offset: const Offset(0, 4))
            ]),
        child: Column(
          children: [
            //CardImage
            CardImage(
                imageUrl: r.imageUrl,
                restaurant: r,
                isFavorited: isFavorited,
                height: 160,
                onTap: onFavoriteTap),
            //Body
            Container(
              decoration: BoxDecoration(
                  color: colors.surfaceContainer,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppDimensions.radiusMD),
                      bottomRight: Radius.circular(AppDimensions.radiusMD))),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spaceMD,
                    vertical: AppDimensions.spaceSM),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Name and RAting
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            r.name,
                            style: (textTheme.titleMedium ?? const TextStyle())
                                .copyWith(fontWeight: FontWeight.w800),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: AppDimensions.spaceXS,
                        ),
                        RatingPill(
                          rating: r.rating,
                          reviewCount: r.reviewCount,
                          compact: true,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: AppDimensions.spaceSM,
                    ),
                    // Only Status
                    Row(
                      children: [
                        FoodieTagFactories.restaurantStatus(r.status,
                            size: TagSize.small),
                        const SizedBox(
                          width: AppDimensions.spaceXXS,
                        ),
                        if (r.tier != null)
                          FoodieTagFactories.restaurantTier(r.tier!,
                              size: TagSize.small)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
