import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/data/models/review.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_progress_bar.dart';

class RestaurantReviewProgress extends StatelessWidget {
  final Restaurant restaurant;
  final List<Review> reviews;
  const RestaurantReviewProgress(
      {super.key, required this.restaurant, required this.reviews});

  double get _average => reviews.isEmpty
      ? 0
      : reviews.map((r) => r.rating).reduce((a, b) => a + b) / reviews.length;

  int _countForStar(int star) =>
      reviews.where((r) => r.rating.round() == star).length;

  double _percentForStar(int star) {
    if (reviews.isEmpty) return 0;
    final count = _countForStar(star);
    if (count == 0) return 0;
    return (count / reviews.length) * 100;
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
        padding: const EdgeInsets.symmetric(
            vertical: AppDimensions.spaceMD, horizontal: AppDimensions.spaceXS),
        color: colors.surfaceContainer,
        child: Row(children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(restaurant.rating.toStringAsFixed(1),
                    // _average.toStringAsFixed(1),
                    style: textTheme.displayLarge?.copyWith(fontSize: 100)),
                //row of star
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      5,
                      (i) => Icon(
                            i < restaurant.rating.round()
                                ? Icons.star
                                : Icons.star_border,
                            color: colors.primary,
                          )),
                ),
                //review count
                Text(
                  restaurant.reviewCount.toString(),
                )
              ],
            ),
          ),
          SizedBox(
            width: AppDimensions.spaceSM,
          ),
          Expanded(
              child: Column(
            children: [
              RestaurantProgressBar(
                number: 5,
                percentage: _percentForStar(5),
              ),
              SizedBox(height: AppDimensions.spaceXXS),
              RestaurantProgressBar(
                number: 4,
                percentage: _percentForStar(4),
              ),
              SizedBox(height: AppDimensions.spaceXXS),
              RestaurantProgressBar(
                number: 3,
                percentage: _percentForStar(3),
              ),
              SizedBox(height: AppDimensions.spaceXXS),
              RestaurantProgressBar(
                number: 2,
                percentage: _percentForStar(2),
              ),
              SizedBox(height: AppDimensions.spaceXXS),
              RestaurantProgressBar(
                number: 1,
                percentage: _percentForStar(1),
              )
            ],
          ))
        ]));
  }
}
