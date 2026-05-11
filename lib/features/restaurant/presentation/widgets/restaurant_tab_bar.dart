import 'package:flutter/material.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';

class RestaurantTabBar extends StatelessWidget {
  final Restaurant restaurant;
  final TabController tabController;
  final void Function(int)? onTap;
  const RestaurantTabBar(
      {super.key,
      required this.restaurant,
      this.onTap,
      required this.tabController});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    //TODO: Replace with actual dish menu when ready
    final List<String> categories = [
      'Popular',
      'Burgers',
      'Sides',
      'Drinks',
      'Dessert'
    ];
    return Container(
      color: colors.surface,
      child: TabBar(
          controller: tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          onTap: onTap,
          tabs: categories.map((category) => Tab(text: category)).toList()),
    );
  }
}
