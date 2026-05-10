import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_rating_row.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_tag.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_tile.dart';

class RestaurantDetails extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantDetails({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.spaceMD),
      child: Column(
        children: [
          RestaurantTile(restaurant: restaurant),
          RestaurantRatingRow(restaurant: restaurant),
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
                label: 'All Cards',
              ),
              SizedBox(
                width: AppDimensions.spaceXS,
              ),
              RestaurantTag(
                icon: Icons.eco,
                label: restaurant.dietaryOptions.isNotEmpty
                    ? 'Veg Options'
                    : 'No Veg Option',
              ),
              SizedBox(
                width: AppDimensions.spaceXS,
              )
            ],
          ),
          Row(
            children: [
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: colors.onSurfaceVariant,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Review',
                    style: textTheme.bodyLarge,
                  )),
              SizedBox(
                width: AppDimensions.spaceSM,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: colors.onSurfaceVariant,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Offers',
                    style: textTheme.bodyLarge,
                  )),
              SizedBox(
                width: AppDimensions.spaceSM,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: colors.onSurfaceVariant,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Info',
                    style: textTheme.bodyLarge,
                  )),
              SizedBox(
                width: AppDimensions.spaceSM,
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
