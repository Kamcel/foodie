import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/home/data/models/home_state.dart';
import 'package:foodie/features/home/presentation/widgets/address_header.dart';
import 'package:foodie/features/home/presentation/widgets/promo_card.dart';
import 'package:foodie/features/home/presentation/widgets/spacebar_padding.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_card.dart';
import 'package:foodie/features/home/presentation/providers/home_notifier.dart';
import 'package:foodie/core/widgets/app_nav_bar.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final state = ref.watch(homeProvider);
    final notifier = ref.read(homeProvider.notifier);

    return Scaffold(
      backgroundColor: colors.surface,
      body: SafeArea(
        child: state.map(
          loading: (_) => Center(
            child: CircularProgressIndicator(color: colors.primary),
          ),
          success: (successState) => CustomScrollView(
            slivers: [
              //SliverAppBar
              SliverAppBar(
                backgroundColor: colors.surface,
                expandedHeight: 200,
                automaticallyImplyLeading: false,
                floating: true,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                  children: [
                    AddressHeader(onTap: () {}),
                    const SizedBox(height: AppDimensions.spaceSM),
                    SpacebarPadding()
                  ],
                )),
              ),

              //promo card
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.spaceMD),
                  child: PromoCard(),
                ),
              ),

              //categories title
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.spaceMD),
                  child: Text(
                    'Categories',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),

              //categories list(Row)
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppDimensions.spaceMD),
                    itemCount: successState.popularCuisines.length,
                    itemBuilder: (context, index) {
                      final cuisine = successState.popularCuisines[index];
                      final isSelected =
                          successState.selectedCuisine == cuisine;
                      return GestureDetector(
                        onTap: () => notifier.selectCuisine(cuisine),
                        child: Container(
                          width: 80,
                          margin: const EdgeInsets.only(
                              right: AppDimensions.spaceMD),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? colors.primary
                                : colors.primaryContainer,
                            borderRadius:
                                BorderRadius.circular(AppDimensions.radiusMD),
                          ),
                          child: Center(
                            child: Text(
                              cuisine.displayName,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: isSelected
                                        ? colors.onPrimary
                                        : colors.onPrimaryContainer,
                                  ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SliverPadding(
                  padding: EdgeInsets.only(top: AppDimensions.spaceMD)),

              //featured title
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.spaceMD),
                  child: Text(
                    'Featured',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),

              const SliverPadding(
                  padding: EdgeInsets.only(top: AppDimensions.spaceSM)),

              //featured list(Row)
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppDimensions.spaceMD),
                    itemCount: successState.featuredRestaurants.length,
                    itemBuilder: (context, index) {
                      final restaurant =
                          successState.featuredRestaurants[index];
                      return Padding(
                        padding:
                            const EdgeInsets.only(right: AppDimensions.spaceMD),
                        child: RestaurantCard(
                          restaurant: restaurant,
                          isFavorited: notifier.isFavorite(restaurant.id),
                          variant: RestaurantCardVariant.medium,
                          onFavoriteTap: () {
                            notifier.favoriteRestaurant(restaurant.id);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SliverPadding(
                  padding: EdgeInsets.only(top: AppDimensions.spaceMD)),

              //trending near by title
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.spaceMD),
                  child: Text(
                    'Trending Near You',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),

              const SliverPadding(
                  padding: EdgeInsets.only(top: AppDimensions.spaceSM)),

              //trending near by list(ListView of big restaurant card)
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spaceMD),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final restaurant =
                          successState.trendingRestaurants[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                            bottom: AppDimensions.spaceMD),
                        child: RestaurantCard(
                          restaurant: restaurant,
                          isFavorited: notifier.isFavorite(restaurant.id),
                          variant: RestaurantCardVariant.big,
                          onFavoriteTap: () {
                            notifier.favoriteRestaurant(restaurant.id);
                          },
                        ),
                      );
                    },
                    childCount: successState.trendingRestaurants.length,
                  ),
                ),
              ),

              const SliverPadding(
                  padding: EdgeInsets.only(bottom: AppDimensions.spaceMD)),
            ],
          ),
          empty: (_) => Center(
            child: Text(
              'No restaurants available',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          error: (errorState) => Center(
            child: Text(
              'Error: ${errorState.message}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: AppNavBar(
          currentIndex: 0,
          onTap: (index) {
            if (index == 0) return;
            if (index == 1) return context.go(Routes.restaurantScreen);
            if (index == 2) return context.go(Routes.cart);
            if (index == 3) return context.go(Routes.orderScreen);
            if (index == 4) return context.go(Routes.profileSetup);
          },
        ),
      ),
    );
  }
}
