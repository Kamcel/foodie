import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/home/presentation/widgets/address_header.dart';
import 'package:foodie/features/home/presentation/widgets/restaurant_cuisine_widget.dart';
import 'package:foodie/features/home/presentation/widgets/spacebar_padding.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CuisineType? _selectedCuisine;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final textTheme = Theme.of(context).textTheme;

    final popularCuisines = [
      CuisineType.american,
      CuisineType.african,
      CuisineType.nigerian,
      CuisineType.chinese,
      CuisineType.mexican,
      CuisineType.italian,
      CuisineType.fastFood,
      CuisineType.pizza,
      CuisineType.burger
    ];
    return Scaffold(
      backgroundColor: colors.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.spaceMD),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200,
                floating: true,
                pinned: true,
                elevation: 0,
                backgroundColor: colors.surface,
                flexibleSpace: FlexibleSpaceBar(
                  background: AddressHeader(
                    onTap: () {},
                  ),
                ),
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(60),
                    child: SpacebarPadding()),
              ),
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: AppDimensions.spaceSM),
                child: Text(
                  'Popular',
                  style: textTheme.titleLarge,
                ),
              )),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 120,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: popularCuisines.length,
                      itemBuilder: (context, index) {
                        final cuisine = popularCuisines[index];
                        return RestaurantCuisineWidget(
                            cuisineType: cuisine,
                            onTap: () {
                              setState(() {
                                _selectedCuisine = cuisine;
                              });
                            },
                            isSelected: _selectedCuisine == cuisine);
                      }),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(AppDimensions.spaceMD),
                sliver: SliverGrid.builder(
                    itemCount: 20,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemBuilder: (context, index) {
                      return Container();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
