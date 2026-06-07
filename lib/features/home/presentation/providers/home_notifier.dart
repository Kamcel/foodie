import 'package:foodie/features/home/data/models/home_state.dart';
import 'package:foodie/features/restaurant/data/mock_restaurants.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:foodie/features/restaurant/data/storage/favorites_hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  final FavoriteStorage _favoriteStorage = FavoriteStorage.instance;
  Set<String> _favoriteRestaurants = {};
  CuisineType? _selectedCuisine;

  final List<CuisineType> _popularCuisines = [
    CuisineType.american,
    CuisineType.african,
    CuisineType.nigerian,
    CuisineType.chinese,
    CuisineType.mexican,
    CuisineType.italian,
    CuisineType.fastFood,
    CuisineType.pizza,
    CuisineType.burger,
  ];

  bool isFavorite(String restaurantId) =>
      _favoriteRestaurants.contains(restaurantId);

  CuisineType? get selectedCuisine => _selectedCuisine;

  @override
  HomeState build() {
    _loadFavorites();
    _emit();
    return const HomeState.loading();
  }

  void _loadFavorites() {
    _favoriteRestaurants = _favoriteStorage.favoriteIds;
  }

  void loadHome() {
    try {
      _loadFavorites();
      _emit();
    } catch (e) {
      state = HomeState.error(message: e.toString());
    }
  }

  void selectCuisine(CuisineType? cuisine) {
    /// 1. tap to select and deselect if already selected
    /// 2. pick one at a time
    /// 3. update screen
    if (_selectedCuisine == cuisine) {
      _selectedCuisine = null;
    } else {
      _selectedCuisine = cuisine;
    }
    _emit();
  }

  void favoriteRestaurant(String restaurantId) {
    /// 1. receive restaurant id
    /// 2. if liked add to set, else remove
    /// 3. persist to storage
    /// 4. update screen
    if (_favoriteRestaurants.contains(restaurantId)) {
      _favoriteRestaurants.remove(restaurantId);
    } else {
      _favoriteRestaurants.add(restaurantId);
    }
    _favoriteStorage.saveFavorites(_favoriteRestaurants);
    _emit();
  }

  void _emit() {
    final featured = _getFilteredRestaurants(5);
    final trending = _getFilteredRestaurants(null);

    if (featured.isEmpty && trending.isEmpty) {
      state = const HomeState.empty();
    } else {
      state = HomeState.success(
        featuredRestaurants: featured,
        trendingRestaurants: trending,
        popularCuisines: _popularCuisines,
        selectedCuisine: _selectedCuisine,
      );
    }
  }

  List<Restaurant> _getFilteredRestaurants(int? limit) {
    final filtered = _selectedCuisine == null
        ? mockRestaurants
        : mockRestaurants
            .where((r) => r.cuisines.contains(_selectedCuisine))
            .toList();

    if (limit != null && filtered.length > limit) {
      return filtered.sublist(0, limit);
    }
    return filtered;
  }
}
