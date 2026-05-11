import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/presentation/providers/restaurant_screen_notifier.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_details.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_hero_header.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_tab_bar.dart';

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
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {},
              ),
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {},
              ),
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {},
              ),
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {},
              ),
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {},
              ),
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
