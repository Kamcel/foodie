import 'package:foodie/features/restaurant/data/mock_restaurants.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/data/models/restaurant_screen_state.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:foodie/features/profile/data/enums.dart';
import 'package:foodie/features/restaurant/data/storage/favorites_hive.dart';
import 'package:foodie/features/restaurant/data/storage/recent_searches_hive.dart';

import 'package:foodie/features/restaurant/presentation/widgets/refinement_filter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'restaurant_screen_notifier.g.dart';

@riverpod
class RestaurantScreenNotifier extends _$RestaurantScreenNotifier {
  List<Restaurant> _allRestaurant = [];
  String _searchResult = '';
  List<String> _recentSearch = [];
  CuisineType? selectedCuisineType;
  Set<RefinementType> selectedRefinement = {};
  Set<CuisineType> _selectedCuisines = {};
  PriceRange? _selectedPriceRange;
  Set<DietaryPreference> _selectedDietary = {};
  SortBy? _selectedSortBy;
  Set<String> favoriteedRestaurants = {};
  final FavoriteStorage _favoriteStorage = FavoriteStorage.instance;
  final RecsentSearchesStorage _recentSearchStorage =
      RecsentSearchesStorage.instance;

  bool isFavorite(String favoriteId) =>
      favoriteedRestaurants.contains(favoriteId);

  CuisineType? get activeCategory => selectedCuisineType;
  Set<RefinementType> get activeRefinement => selectedRefinement;
  List<String> get recentSearches => _recentSearch;

  void addRecentSearch(String query) {
    /// 1. if search is found add to top
    /// 2. remove last
    /// 3. should not be more than 3
    /// 4. update screen
    if (query.trim().isEmpty) return;
    _recentSearch.remove(query);
    _recentSearch.insert(0, query);

    if (_recentSearch.length > 3) {
      _recentSearch.removeLast();
    }

    _recentSearchStorage.saveSearches(_recentSearch);
    _emit();
  }

  void onSearchSubmit(String query) {
    ///1. accept query
    if (query.trim().isEmpty) return;

    ///2. add to recent search
    addRecentSearch(query);
    _searchResult = query;

    ///3. display result
    _emit();
  }

  void selectedCategory(CuisineType? cuisineType) {
    //Recieve food catrgory
    ///1. tap to select and deselect if already selected
    ///2.pick one at at time
    ///update screen
    if (selectedCuisineType == cuisineType) {
      selectedCuisineType = null;
    } else {
      selectedCuisineType = cuisineType;
    }
    _emit();
  }

  void toggleRefinement(RefinementType refine) {
    /// 1. Recieve data
    /// 2. tap to select
    /// 3. tap to delect is already selected
    /// 4. accept more than one and no duplicate
    /// 5. update screen
    if (selectedRefinement.contains(refine)) {
      selectedRefinement.remove(refine);
    } else {
      selectedRefinement.add(refine);
    }
    _emit();
  }

  int get restaurantCount {
    return state.maybeWhen(
      success: (restaurants) => restaurants.length,
      orElse: () => 0,
    );
  }

  void removeRecentSearch(String query) {
    //1.remove from recentSearch
    // 2. update

    _recentSearch.remove(query);
    _recentSearchStorage.saveSearches(_recentSearch);
    _emit();
  }

  void applyFilters(Set<CuisineType> cuisines, PriceRange? priceRange,
      Set<DietaryPreference> dietary, SortBy? sortBy) {
    _selectedCuisines = cuisines;
    _selectedPriceRange = priceRange;
    _selectedDietary = dietary;
    _selectedSortBy = sortBy;
    _emit();
  }

  void resetFilters() {
    _selectedCuisines.clear();
    _selectedPriceRange = null;
    _selectedDietary.clear();
    _selectedSortBy = null;
    _emit();
  }

  void favoriteRestaurant(String restaurant) {
    ///recieve restaurant
    ///if liked add to list, else remove
    ///update screen
    if (favoriteedRestaurants.contains(restaurant)) {
      favoriteedRestaurants.remove(restaurant);
    } else {
      favoriteedRestaurants.add(restaurant);
    }
    _favoriteStorage.saveFavorites(favoriteedRestaurants);
    _emit();
  }

  void _emit() {
    final filtered = _applyFilter();
    if (filtered.isEmpty) {
      state = const RestaurantScreenState.empty();
    } else {
      state = RestaurantScreenState.success(restaurants: filtered);
    }
  }

  List<Restaurant> _applyFilter() {
    //1. copy of all restaurnt
    //2. if category is seleted, keep matches
    //3. if refinement is seleted keep
    //4. if search query, keep match
    List<Restaurant> result = List.from(_allRestaurant);
    if (selectedCuisineType != null) {
      result = result
          .where((r) => _matchesCuisine(r, selectedCuisineType!))
          .toList();
    }

    if (_searchResult.isNotEmpty) {
      final q = _searchResult.toLowerCase();
      result = result.where((r) {
        return r.name.toLowerCase().contains(q) ||
            r.cuisines.any((c) => c.displayName.toLowerCase().contains(q)) ||
            r.tags.any((t) => t.toLowerCase().contains(q)) ||
            r.description.toLowerCase().contains(q);
      }).toList();
    }

    if (selectedRefinement.contains(RefinementType.rating4Plus)) {
      result = result.where((r) => r.rating >= 4.0).toList();
    }
    if (selectedRefinement.contains(RefinementType.fastDelivery)) {
      result = result.where((r) => r.deliveryTimeMin <= 30).toList();
    }
    if (selectedRefinement.contains(RefinementType.freeDelivery)) {
      result = result.where((r) => r.deliveryFee == 0).toList();
    }
    if (selectedRefinement.contains(RefinementType.offers)) {
      result = result.where((r) => r.activePromotions.isNotEmpty).toList();
    }

    // Apply advanced filters
    if (_selectedCuisines.isNotEmpty) {
      result = result
          .where((r) => r.cuisines.any((c) => _selectedCuisines.contains(c)))
          .toList();
    }

    if (_selectedPriceRange != null) {
      result =
          result.where((r) => r.priceRange == _selectedPriceRange).toList();
    }

    return result;
  }

  bool _matchesCuisine(Restaurant r, CuisineType selectedCuisineType) {
    return r.cuisines.contains(selectedCuisineType);
  }

  @override
  RestaurantScreenState build() {
    loadRestaurant();
    return const RestaurantScreenState.loading();
  }

  Future<void> loadRestaurant() async {
    state = const RestaurantScreenState.loading(); // 1. tell UI loading
    try {
      await Future.delayed(const Duration(seconds: 1));
      // final result = await _api.method(); // 2. call server/service   //TODO: fix when api is ready
      _allRestaurant = mockRestaurants;

      // await _storage.save(result);           // 3. save to Hive (if needed)

      favoriteedRestaurants = _favoriteStorage.favoriteIds;
      _recentSearch = _recentSearchStorage.recentSearches;
      state = RestaurantScreenState.success(
          restaurants: _allRestaurant); // 4. tell UI result
    } catch (e) {
      state = RestaurantScreenState.error(message: e.toString());
    }
  }
}
