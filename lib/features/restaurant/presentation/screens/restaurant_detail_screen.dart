import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/features/dish/data/models/dish_enums.dart';
import 'package:foodie/features/dish/presentation/providers/menu_dish_notifier.dart';
import 'package:foodie/features/dish/presentation/widgets/dish_tile.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/presentation/providers/restaurant_screen_notifier.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_details.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_hero_header.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_tab_bar.dart';
import 'package:go_router/go_router.dart';

class RestaurantDetailScreen extends ConsumerStatefulWidget {
  final Restaurant restaurant;

  const RestaurantDetailScreen({super.key, required this.restaurant});

  @override
  ConsumerState<RestaurantDetailScreen> createState() =>
      _RestaurantDetailsScreenState();
}

class _RestaurantDetailsScreenState
    extends ConsumerState<RestaurantDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(restaurantScreenProvider.notifier);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                background: RestaurantHeroHeader(
                  imageUrl: widget.restaurant.imageUrl,
                  height: 300,
                  isFavorited: notifier.isFavorite(widget.restaurant.id),
                  onFavorited: () =>
                      notifier.favoriteRestaurant(widget.restaurant.id),
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: RestaurantDetails(restaurant: widget.restaurant)),
            SliverPersistentHeader(
                pinned: true,
                delegate: _MenuTabDelegate(
                    child: RestaurantTabBar(
                      restaurant: widget.restaurant,
                      tabController: _tabController,
                      onTap: (index) {
                        setState(() {
                          _tabController.animateTo(index);
                        });
                      },
                    ),
                    height: 48)),
            SliverFillRemaining(
                child: TabBarView(controller: _tabController, children: [
              //TODO: add real data when discard is ready
              _DishTab(category: DishCategory.popular),
              _DishTab(category: DishCategory.burgers),
              _DishTab(category: DishCategory.sides),
              _DishTab(category: DishCategory.drinks),
              _DishTab(category: DishCategory.desserts),
            ]))
            // SliverList(delegate: delegate),
          ],
        ),
      ),
    );
  }
}

class _MenuTabDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  _MenuTabDelegate({required this.child, required this.height});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant _MenuTabDelegate oldDelegate) =>
      oldDelegate.child != child;
}

class _DishTab extends ConsumerWidget {
  final DishCategory category;
  const _DishTab({required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishes = ref.watch(menuDishProvider);
    final filtered =
        dishes.where((d) => d.categories.contains(category)).toList();

    return ListView.builder(
      itemCount: filtered.length,
      itemBuilder: (_, i) {
        final dish = filtered[i];
        return DishTile(
            imageUrl: dish.imageUrl,
            dishName: dish.name,
            description: dish.description,
            price: dish.basePrice,
            onAdd: () {
              context.pushNamed('dishDetailScreen', extra: dish);
            });
      },
    );
  }
}
