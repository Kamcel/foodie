import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/app_button.dart';
import 'package:foodie/features/profile/data/enums.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:foodie/features/restaurant/presentation/widgets/app_chip.dart';
import 'package:foodie/features/restaurant/presentation/widgets/app_chip_two.dart';

class Filter extends StatefulWidget {
  final Set<CuisineType> initialCusines;
  final PriceRange? initialPriceRange;
  final Set<DietaryPreference> initialDietaryPreferences;
  final SortBy? initialSortBy;
  final int restaurantCount;
  final VoidCallback onReset;
  final void Function(
      Set<CuisineType>, PriceRange?, Set<DietaryPreference>, SortBy?) onApply;

  const Filter({
    super.key,
    required this.initialCusines,
    this.initialPriceRange,
    required this.initialDietaryPreferences,
    this.initialSortBy,
    this.restaurantCount = 0,
    required this.onReset,
    required this.onApply,
  });

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  late Set<CuisineType> _selectedCuisines;
  late PriceRange? _selectedPriceRange;
  late Set<DietaryPreference> _selectedDietaryPreferences;
  late SortBy? _selectedSortBy;

  @override
  void initState() {
    super.initState();
    _selectedCuisines = Set.from(widget.initialCusines);
    _selectedPriceRange = widget.initialPriceRange;
    _selectedDietaryPreferences = Set.from(widget.initialDietaryPreferences);
    _selectedSortBy = widget.initialSortBy;
  }

  void onReset() {
    setState(() {
      _selectedCuisines.clear();
      _selectedPriceRange = null;
      _selectedDietaryPreferences.clear();
      _selectedSortBy = null;
    });
  }

  void onApply() {
    widget.onApply(
      _selectedCuisines,
      _selectedPriceRange,
      _selectedDietaryPreferences,
      _selectedSortBy,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(AppDimensions.spaceMD),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filters',
                  style: textTheme.titleMedium,
                ),
                SizedBox(
                  width: 80,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        backgroundColor: colors.surfaceContainer,
                      ),
                      onPressed: () {
                        onReset();
                        widget.onReset();
                      },
                      child: Text('Reset all')),
                )
              ],
            ),
            //Cusine Title
            SizedBox(
              height: AppDimensions.spaceMD,
            ),
            Text(
              'Cusine',
              style: textTheme.bodyLarge,
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),

            //Wrap of cuisne chips
            Wrap(
              spacing: AppDimensions.spaceXS,
              runSpacing: AppDimensions.spaceXS,
              children: CuisineType.values.map((cuisine) {
                return AppChip(
                    label: cuisine.displayName,
                    isSelected: _selectedCuisines.contains(cuisine),
                    onSelected: (_) {
                      setState(() {
                        if (_selectedCuisines.contains(cuisine)) {
                          _selectedCuisines.remove(cuisine);
                        } else {
                          _selectedCuisines.add(cuisine);
                        }
                      });
                    });
              }).toList(),
            ),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),
            //price title
            Text(
              'Price Range',
              style: textTheme.bodyLarge,
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            //Row of price chips
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: PriceRange.values.map((price) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: AppDimensions.spaceXS),
                    child: AppChipTwo(
                        label: price.label,
                        isSelected: price == _selectedPriceRange,
                        onSelected: (_) {
                          setState(() {
                            if (_selectedPriceRange == price) {
                              _selectedPriceRange = null;
                            } else {
                              _selectedPriceRange = price;
                            }
                          });
                        }),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            //Dietary title
            Text(
              'Dietary',
              style: textTheme.bodyLarge,
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            //Wrap of dietary chips
            Wrap(
              spacing: AppDimensions.spaceXS,
              runSpacing: AppDimensions.spaceXS,
              children: DietaryPreference.values.map((dietary) {
                return AppChip(
                    label: dietary.displayName,
                    isSelected: _selectedDietaryPreferences.contains(dietary),
                    onSelected: (_) {
                      setState(() {
                        if (_selectedDietaryPreferences.contains(dietary)) {
                          _selectedDietaryPreferences.remove(dietary);
                        } else {
                          _selectedDietaryPreferences.add(dietary);
                        }
                      });
                    });
              }).toList(),
            ),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),
            //sort by title
            Text(
              'Sort by',
              style: textTheme.bodyLarge,
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            //Wrap of sort by chips
            Wrap(
              spacing: AppDimensions.spaceXS,
              runSpacing: AppDimensions.spaceXS,
              children: SortBy.values.map((sort) {
                return AppChip(
                    label: sort.displayName,
                    isSelected: sort == _selectedSortBy,
                    onSelected: (_) {
                      setState(() {
                        _selectedSortBy = sort;
                      });
                    });
              }).toList(),
            ),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),
            //Button
            AppButton(
                label: 'Show ${widget.restaurantCount} restaurants',
                onPressed: onApply)
          ],
        ),
      ),
    );
  }
}
