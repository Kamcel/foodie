import 'package:flutter/material.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/presentation/widgets/big_restaurant_card.dart';
import 'package:foodie/features/restaurant/presentation/widgets/medium_restaurant_card.dart';
import 'package:foodie/features/restaurant/presentation/widgets/small_restaurant_card.dart';

enum RestaurantCardVariant { big, medium, small }

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;
  final bool isFavorited;
  final RestaurantCardVariant variant;
  const RestaurantCard(
      {super.key,
      required this.restaurant,
      this.onTap,
      required this.isFavorited,
      required this.variant,
      this.onFavoriteTap});

  @override
  Widget build(BuildContext context) {
    return switch (variant) {
      RestaurantCardVariant.big => BigRestaurantCard(
          restaurant: restaurant,
          onTap: onTap,
          onFavoriteTap: onFavoriteTap,
          isFavorited: isFavorited),
      RestaurantCardVariant.medium => MediumRestaurantCard(
          restaurant: restaurant,
          onTap: onTap,
          onFavoriteTap: onFavoriteTap,
          isFavorited: isFavorited),
      RestaurantCardVariant.small => SmallRestaurantCard(
          restaurant: restaurant,
          onTap: onTap,
        )
    };
  }
}
