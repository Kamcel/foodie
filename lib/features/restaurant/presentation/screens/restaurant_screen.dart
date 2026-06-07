import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/app_nav_bar.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/features/restaurant/data/models/restaurant_screen_state.dart';
import 'package:foodie/features/restaurant/presentation/providers/restaurant_screen_notifier.dart';
import 'package:foodie/features/restaurant/presentation/widgets/category_filter.dart';
import 'package:foodie/features/restaurant/presentation/widgets/filter_buttom_sheet.dart';
import 'package:foodie/features/restaurant/presentation/widgets/refinement_filter.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_empty.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_error.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_loading.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_success.dart';
import 'package:foodie/features/restaurant/presentation/widgets/search_and_back.dart';
import 'package:go_router/go_router.dart';

class RestaurantScreen extends ConsumerStatefulWidget {
  const RestaurantScreen({super.key});

  @override
  ConsumerState<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends ConsumerState<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final state = ref.watch(restaurantScreenProvider);
    final notifier = ref.read(restaurantScreenProvider.notifier);

    final currentCuisine = state.maybeWhen(
      success: (_, cuisine, __, ___, ____) => cuisine,
      empty: (cuisine, __, ___) => cuisine,
      orElse: () => null,
    );

    final currentRefinements = state.maybeWhen(
      success: (_, __, refinements, ___, ____) => refinements,
      empty: (_, refinements, ___) => refinements,
      orElse: () => <RefinementType>{},
    );

    return Scaffold(
      backgroundColor: colors.surface,
      bottomNavigationBar: SizedBox(
        height: 70,
        child: AppNavBar(
          currentIndex: 1,
          onTap: (index) {
            if (index == 1) return;
            if (index == 0) return context.go(Routes.home);
            if (index == 2) return context.go(Routes.cart);
            if (index == 3) return context.go(Routes.orderScreen);
            if (index == 4) return context.go(Routes.profileSetup);
          },
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(350),
        child: AppBar(
          backgroundColor: colors.surfaceContainer,
          flexibleSpace: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //search and back
                  SearchAndBack(
                    onBackTap: () => Navigator.pop(context), //TODO: bach home
                    onSubmit: (query) => notifier.onSearchSubmit(query),
                    onSearchTap: () {},
                  ),
                  SizedBox(
                    height: AppDimensions.spaceXXS,
                  ),
                  //
                  CategoryFilter(
                    onCategorySelected: (category) {
                      notifier.selectedCategory(category);
                    },
                    selectedCuisineType: currentCuisine,
                  ),
                  SizedBox(
                    height: AppDimensions.spaceSM,
                  ),
                  //refinement
                  RefinementFilter(
                      onSelectedRefineFilter: (refine) {
                        notifier.toggleRefinement(refine);
                      },
                      selectedRefinement: currentRefinements,
                      onOpenFilter: () {
                        showModalBottomSheet(
                            showDragHandle: true,
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => Filter(
                                  initialCusines: const {},
                                  initialPriceRange: null,
                                  initialDietaryPreferences: const {},
                                  initialSortBy: null,
                                  restaurantCount: notifier.restaurantCount,
                                  onReset: () => notifier.resetFilters(),
                                  onApply:
                                      (cuisines, priceRange, dietary, sortBy) =>
                                          notifier.applyFilters(cuisines,
                                              priceRange, dietary, sortBy),
                                ));
                      }),
                  SizedBox(
                    height: AppDimensions.spaceSM,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: state.map(
        loading: (_) => const RestaurantLoading(),
        success: (state) => RestaurantSuccess(
          restaurants: state.restaurants,
          recentSearches: notifier.recentSearches,
          onRemoveRecent: (query) => notifier.removeRecentSearch(query),
          onTapRecent: (query) => notifier.onSearchSubmit(query),
          isFavorite: (id) => notifier.isFavorite(id),
          onToggleFavorite: (id) => notifier.favoriteRestaurant(id),
        ),
        empty: (_) => const RestaurantEmpty(),
        error: (state) => RestaurantError(
          message: state.message,
          onRetry: () => notifier.loadRestaurant(),
        ),
      ),
    );
  }
}
