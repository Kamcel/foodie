import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class RestaurantSearchBar extends StatefulWidget {
  const RestaurantSearchBar({super.key});

  @override
  State<RestaurantSearchBar> createState() => _RestaurantSearchBarState();
}

class _RestaurantSearchBarState extends State<RestaurantSearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            size: 32,
          ),
          hintText: 'Search restaurants, dishes...',
          filled: true,
          fillColor: colors.surfaceContainer,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: colors.primary),
              borderRadius: BorderRadius.circular(AppDimensions.radiusSM)),
          enabledBorder: OutlineInputBorder(
              // borderSide: BorderSide(width: 2, color: colors.primary),
              borderRadius: BorderRadius.circular(AppDimensions.radiusSM))),
    );
  }
}
