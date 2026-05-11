import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_rating_row.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_tag.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_tile.dart';
import 'package:go_router/go_router.dart';

class RestaurantDetails extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantDetails({super.key, required this.restaurant});

  String paymentLabel() {
    if (restaurant.acceptedPaymentMethods.isEmpty) return 'Cash only';
    if (restaurant.acceptedPaymentMethods.length >= 3) return 'All Cards';
    return restaurant.acceptedPaymentMethods
        .map((p) => p.displayName)
        .join(', ');
  }

  String? dietaryLabel() {
    if (restaurant.dietaryOptions.isEmpty) return null;
    if (restaurant.dietaryOptions.length >= 3) return 'Dietary Options';
    return restaurant.dietaryOptions.first.displayName;
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      color: colors.surfaceContainer,
      padding: const EdgeInsets.all(AppDimensions.spaceMD),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RestaurantTile(restaurant: restaurant),
          SizedBox(
            height: AppDimensions.spaceMD,
          ),
          RestaurantRatingRow(restaurant: restaurant),
          SizedBox(
            height: AppDimensions.spaceMD,
          ),
          Row(
            children: [
              RestaurantTag(
                icon: Icons.access_time,
                label: restaurant.isOpenNow
                    ? 'Open until ${_formatTime(restaurant.nextClosingTime)} '
                    : 'Closed',
              ),
              SizedBox(
                width: AppDimensions.spaceXS,
              ),
              RestaurantTag(
                icon: Icons.credit_card,
                label: paymentLabel(),
              ),
              SizedBox(
                width: AppDimensions.spaceXS,
              ),
              if (restaurant.dietaryOptions.isNotEmpty)
                RestaurantTag(
                  icon: Icons.eco,
                  label: restaurant.dietaryOptions.isNotEmpty
                      ? 'Veg Options'
                      : 'No Veg Option',
                ),
              SizedBox(
                height: AppDimensions.spaceMD,
              ),
              SizedBox(
                width: AppDimensions.spaceXS,
              )
            ],
          ),
          SizedBox(
            height: AppDimensions.spaceMD,
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(),
                    onPressed: () {
                      context.pushNamed('restaurantReviewScreen', extra: {
                        'restaurant': restaurant,
                        'reviews': restaurant.reviews
                      });
                    },
                    child: Text(
                      'Review',
                      style: textTheme.bodyLarge,
                    )),
              ),
              SizedBox(
                width: AppDimensions.spaceSM,
              ),
              Expanded(
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(),
                    onPressed: () {},
                    child: Text(
                      'Offers',
                      style: textTheme.bodyLarge,
                    )),
              ),
              SizedBox(
                width: AppDimensions.spaceSM,
              ),
              Expanded(
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(),
                    onPressed: () {},
                    child: Text(
                      'Info',
                      style: textTheme.bodyLarge,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }

  String _formatTime(DateTime? nextClosingTime) {
    if (nextClosingTime == null) return '';
    final hour = nextClosingTime.hour;
    final minute = nextClosingTime.minute.toString().padLeft(2, '0');
    final period = hour >= 12 ? 'pm' : 'am';
    final displayHour = hour > 12 ? hour - 12 : (hour == 0 ? 12 : hour);
    return '$displayHour:$minute $period';
  }
}
