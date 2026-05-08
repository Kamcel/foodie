import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/presentation/widgets/recent_search_tile.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_card.dart';

class RestaurantSuccess extends StatefulWidget {
  final List<Restaurant> restaurants;
  final List<String> recentSearches;
  final void Function(String) onRemoveRecent;
  final void Function(String) onTapRecent;
  final bool Function(String) isFavorite;
  final void Function(String) onToggleFavorite;
  const RestaurantSuccess(
      {super.key,
      required this.restaurants,
      required this.recentSearches,
      required this.onRemoveRecent,
      required this.onTapRecent,
      required this.isFavorite,
      required this.onToggleFavorite});

  @override
  State<RestaurantSuccess> createState() => _RestaurantSuccessState();
}

class _RestaurantSuccessState extends State<RestaurantSuccess> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final hasRecent = widget.recentSearches.isNotEmpty;
    return CustomScrollView(slivers: [
      if (hasRecent)
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.spaceMD,
                vertical: AppDimensions.spaceLG),
            child: Text(
              'Recent Searches',
              style: textTheme.titleMedium,
            ),
          ),
        ),
      if (hasRecent)
        SliverList.builder(
          itemCount: widget.recentSearches.length,
          itemBuilder: (context, index) {
            final recent = widget.recentSearches[index];
            return RecentSearchTile(
                label: recent,
                onCancel: () => widget.onRemoveRecent(recent),
                onOpen: () => widget.onTapRecent(recent),
                size: 8);
          },
        ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.spaceMD),
          child: Text(
            '${widget.restaurants.length} restaurants nearby',
            style: textTheme.titleMedium,
          ),
        ),
      ),
      SliverList.builder(
        itemCount: widget.restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = widget.restaurants[index];
          return RestaurantCard(
              restaurant: restaurant,
              isFavorited: widget.isFavorite(restaurant.id),
              onFavoriteTap: () => widget.onToggleFavorite(restaurant.id),
              variant: RestaurantCardVariant.big);
        },
      ),
    ]);
  }
}


// itemCount: widget.restaurants.length +
//             (hasRecent ? widget.recentSearches.length + 1 : 0),
//         itemBuilder: (context, index) {
//           if (hasRecent) {
//             if (index == 0) {
//               return Padding(
//                 padding: const EdgeInsets.fromLTRB(
//                     AppDimensions.spaceMD,
//                     AppDimensions.spaceSM,
//                     AppDimensions.spaceMD,
//                     AppDimensions.spaceXXS),
//                 child: Text(
//                   'Recent Search',
//                   style: textTheme.titleMedium
//                       ?.copyWith(fontWeight: FontWeight.w600),
//                 ),
//               );
//             }
//             if (index <= widget.recentSearches.length) {
//               final searchIndex = index - 1;
//               return RecentSearchTile(
//                   label: widget.recentSearches[searchIndex],
//                   onCancel: () =>
//                       widget.onRemoveRecent(widget.recentSearches[searchIndex]),
//                   onOpen: () =>
//                       widget.onTapRecent(widget.recentSearches[searchIndex]),
//                   size: 8);
//             }
//           }
//           final restaurantIndex =
//               hasRecent ? index - (widget.recentSearches.length + 1) : index;
//           final restaurant = widget.restaurants[restaurantIndex];
//           return RestaurantCard(
//               restaurant: restaurant,
//               isFavorited: widget.isFavorite(restaurant.id),
//               onFavoriteTap: () => widget.onToggleFavorite(restaurant.id),
//               variant: RestaurantCardVariant.big);
//         }



 