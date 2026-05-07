import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/foodie_tag.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/presentation/widgets/image_placeholder.dart';

class CardImage extends StatelessWidget {
  final String imageUrl;
  final Restaurant restaurant;
  final bool isFavorited;
  final double height;
  final VoidCallback? onTap;
  const CardImage(
      {super.key,
      required this.imageUrl,
      required this.restaurant,
      required this.isFavorited,
      required this.height,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    final r = restaurant;
    return ClipRRect(
      borderRadius:
          BorderRadius.vertical(top: Radius.circular(AppDimensions.radiusMD)),
      child: Stack(
        children: [
          SizedBox(
            height: height,
            width: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (
                _,
                __,
                ___,
              ) =>
                  ImagePlaceholder(size: height),
            ),
          ),

          // Dim overlay when not orderable
          if (!r.status.isOrderable)
            Container(
              height: height,
              color: Colors.black.withValues(alpha: 0.45),
            ),
          Positioned(
              top: AppDimensions.spaceSM,
              left: AppDimensions.spaceSM,
              child: Row(
                children: [
                  //Status tag- always shown
                  FoodieTagFactories.restaurantStatus(
                    r.status,
                    size: TagSize.small,
                    variant: TagVariant.filled,
                  ),
                  const SizedBox(
                    width: AppDimensions.spaceXXS,
                  ),

                  //Tier  Tag - always shown
                  if (r.tier != null)
                    FoodieTagFactories.restaurantTier(r.tier!,
                        size: TagSize.small,
                        variant: TagVariant.filled,
                        useBadge: true),
                ],
              )),
          // top Right. Favorite Button
          Positioned(
              top: AppDimensions.spaceXS,
              right: AppDimensions.spaceXS,
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: AppColors.chineseContainer.withValues(alpha: 0.9),
                      shape: BoxShape.circle),
                  child: Icon(
                    isFavorited ? Icons.favorite : Icons.favorite_border,
                    size: AppDimensions.spaceMD,
                    color:
                        isFavorited ? AppColors.error : AppColors.textLowLight,
                  ),
                ),
              )),
          //Bottom left- for Promo, only if avaialable
          if (r.activePromotions.isNotEmpty)
            Positioned(
                bottom: AppDimensions.spaceSM,
                left: AppDimensions.spaceMD,
                child: FoodieTagFactories.promotionType(
                    r.activePromotions.first.type,
                    size: TagSize.small,
                    variant: TagVariant.filled)),

          //Sponsored  Label
          if (r.isSponsored)
            Positioned(
                bottom: AppDimensions.spaceSM,
                right: AppDimensions.spaceSM,
                child: FoodieTag(
                  label: 'Sponsored',
                  color: AppColors.secondary,
                  size: TagSize.small,
                  variant: TagVariant.filled,
                ))
        ],
      ),
    );
  }
}
