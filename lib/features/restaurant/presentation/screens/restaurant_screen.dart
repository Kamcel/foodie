// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:foodie/core/theme/app_dimensions.dart';
// import 'package:foodie/core/widgets/app_nav_bar.dart';
// import 'package:foodie/features/restaurant/data/models/restaurant.dart';
// import 'package:foodie/features/restaurant/data/models/restaurant_screen_state.dart';

// import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
// import 'package:foodie/features/restaurant/presentation/providers/restaurant_screen_notifier.dart';
// import 'package:foodie/features/restaurant/presentation/widgets/category_filter.dart';
// import 'package:foodie/features/restaurant/presentation/widgets/filter_buttom_sheet.dart';
// import 'package:foodie/features/restaurant/presentation/widgets/recent_search_tile.dart';
// import 'package:foodie/features/restaurant/presentation/widgets/refinement_filter.dart';
// import 'package:foodie/features/restaurant/presentation/widgets/restaurant_card.dart';
// import 'package:foodie/features/restaurant/presentation/widgets/search_and_back.dart';

// class RestaurantScreen extends ConsumerStatefulWidget {
//   const RestaurantScreen({super.key});

//   @override
//   ConsumerState<RestaurantScreen> createState() => _RestaurantScreenState();
// }

// class _RestaurantScreenState extends ConsumerState<RestaurantScreen> {
//   FoodCategory? _selectedFoodCategory;
//   final Set<RefinementType> _selectedRefinement = {};
//   final Set<CuisineType> _selectedCusine = {};
//   final Set<RestaurantDietaryPreference> _selectedDietary = {};
//   PriceRange? _selectedPriceRange;
//   SortBy? _selectedSortBy;
//   Set<String> _favoritedIds = {};
//   final TextEditingController _searchController = TextEditingController();

//   bool _isFavorite(String restaurantId) => _favoritedIds.contains(restaurantId);

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }

//   void _toggleFavorite(String restaurantId) {
//     setState(() {
//       if (_favoritedIds.contains(restaurantId)) {
//         _favoritedIds.remove(restaurantId);
//       } else {
//         _favoritedIds.add(restaurantId);
//       }
//     });
//   }

//   final List<Restaurant> _restaurants = [];

//   void _onReset() {
//     setState(() {
//       _selectedCusine.clear();
//       _selectedDietary.clear();
//       _selectedPriceRange = null;
//       _selectedSortBy = null;
//       _selectedRefinement.clear();
//     });
//   }

//   void _onApply() {}

//   void _onOpenFilter() {
//     showModalBottomSheet(
//         showDragHandle: true,
//         context: context,
//         builder: (context) => Filter(
//             initialCusines: _selectedCusine,
//             initialDietaryPreferences: _selectedDietary,
//             initialPriceRange: _selectedPriceRange,
//             initialSortBy: _selectedSortBy,
//             onReset: _onReset,
//             onApply: _onApply));
//   }

//   void _onOpen() {
//     //TODO: go to searcg
//   }

//   @override
//   Widget build(BuildContext context) {
//     final state = ref.watch(restaurantScreenProvider);
//     final notifier = ref.read(restaurantScreenProvider.notifier);
//     final colors = Theme.of(context).colorScheme;
//     final textTheme = Theme.of(context).textTheme;
//     return Scaffold(
//       bottomNavigationBar: AppNavBar(currentIndex: 1, onTap: (index) {}),
//         backgroundColor: colors.surface,
//         appBar: PreferredSize(
//             preferredSize: Size.fromHeight(320),
//             child: AppBar(
//               backgroundColor: colors.surfaceContainer,
//               elevation: 0.0,
//               scrolledUnderElevation: 0.0,
//               flexibleSpace: Padding(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).padding.top,
//                     bottom: AppDimensions.spaceSM),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     //Search and Back
//                     SearchAndBack(
//                       onBackTap: () {
//                         //TODO: Go back home
//                       },
//                       onSearchTap: () {

//                       },
//                     ),
//                     SizedBox(
//                       height: AppDimensions.spaceXXS,
//                     ),
//                     //Category chips
//                     CategoryFilter(
//                         onCategorySelected: (category) {
//                           notifier.category(category ?? FoodCategory.all);
//                         },
//                         selectedFoodCategory:
//                             _selectedFoodCategory ?? FoodCategory.all),
//                     SizedBox(
//                       height: AppDimensions.spaceLG,
//                     ),
//                     // Refinement widget
//                     RefinementFilter(
//                         onSelectedRefineFilter: (refine) {
//                           setState(() {
//                             if (_selectedRefinement.contains(refine)) {
//                               _selectedRefinement.remove(refine);
//                             } else {
//                               _selectedRefinement.add(refine);
//                             }
//                           });
//                         },
//                         selectedRefinement: notifier.activeRefinement,
//                         onOpenFilter: _onOpenFilter)
//                   ],
//                 ),
//               ),
//             )),
//         body: state.when(
//           loading: () => const Center(
//             child: CircularProgressIndicator(),
//           ),
//           error: (message) => Center(
//             child: Text('Error: $message'),
//           ),
//           empty: () => Center(
//             child: Text('No restaurant found'),
//           ),
//           success: (restaurants) => Column(
//             children: [
//               if (notifier.recentSearches.isNotEmpty)
//                 Padding(
//                   padding: const EdgeInsets.all(AppDimensions.spaceMD),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       //Text
//                       Text(
//                         'Recent searches',
//                         style: textTheme.titleSmall,
//                       ),
//                       SizedBox(
//                         height: AppDimensions.spaceSM,
//                       ),
//                       //Recent Widget
//                       ...notifier.recentSearches
//                           .map((search) => RecentSearchTile(
//                                 label: search,
//                                 onCancel: () {
//                                   setState(() {
//                                     notifier.recentSearches.remove(search);
//                                   });
//                                 },
//                                 onOpen: () {},
//                                 size: 8,
//                               ))
//                     ],
//                   ),
//                 ),
//               Expanded(
//                   child: ListView.builder(
//                       itemCount: _restaurants.length,
//                       itemBuilder: (context, index) {
//                         final restaurant = restaurants[index];

//                         return RestaurantCard(
//                             restaurant: restaurant,
//                             isFavorited: _isFavorite(restaurant.id),
//                             onFavoriteTap: () => _toggleFavorite(restaurant.id),
//                             variant: RestaurantCardVariant.big);
//                       }))
//             ],
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/app_nav_bar.dart';
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

    return Scaffold(
      backgroundColor: colors.surface,
      bottomNavigationBar: SizedBox(
        height: 70,
        child: AppNavBar(
          currentIndex: 1,
          onTap: (_) {},
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
                    selectedCuisineType: notifier.selectedCuisineType,
                  ),
                  SizedBox(
                    height: AppDimensions.spaceSM,
                  ),
                  //refinement
                  RefinementFilter(
                      onSelectedRefineFilter: (refine) {
                        notifier.toggleRefinement(refine);
                      },
                      selectedRefinement: notifier.selectedRefinement,
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
                                  onApply: (cuisines, priceRange, dietary,
                                          sortBy) =>
                                      notifier.applyFilters(
                                          cuisines, priceRange, dietary, sortBy),
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
