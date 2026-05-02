import 'package:flutter/material.dart';
import 'package:foodie/features/restaurant/data/models/filter_options.dart';
import 'package:foodie/features/restaurant/presentation/widgets/filter_row_chip.dart';

class FilterRow extends StatelessWidget {
  final FilterOptions filters;
  final VoidCallback onOpenFilter;
  final VoidCallback onClearAll;

  const FilterRow({
    super.key,
    required this.filters,
    required this.onOpenFilter,
    required this.onClearAll,
  });

  @override
  Widget build(BuildContext context) {
    final chips = <Widget>[
      // Static filter chip (opens bottom sheet)
      FilterRowChip(
        label: 'Filter',
        isSelected: false,
        onTap: onOpenFilter,
      ),
    ];

    // Add chips for each active filter
    if (filters.minRating != null) {
      chips.add(FilterRowChip(
        label: '⭐ ${filters.minRating!.toStringAsFixed(1)}+',
        isSelected: true,
        onTap: () {}, // No action — shows active filter
      ));
    }

    if (filters.freeDelivery == true) {
      chips.add(FilterRowChip(
        label: '🚚 Free delivery',
        isSelected: true,
        onTap: () {},
      ));
    }

    if (filters.openNow == true) {
      chips.add(FilterRowChip(
        label: '🟢 Open now',
        isSelected: true,
        onTap: () {},
      ));
    }

    // Add clear all button if any filters active
    if (chips.length > 1) {
      chips.add(FilterRowChip(
        label: 'Clear all',
        isSelected: false,
        onTap: onClearAll,
      ));
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: chips,
      ),
    );
  }
}
