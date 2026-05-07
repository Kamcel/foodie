import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/restaurant/presentation/widgets/app_chip.dart';

enum RefinementType {
  filters('Filters'),
  rating4Plus('Rating 4+'),
  fastDelivery('Fast Delivery'),
  freeDelivery('Free Delivery'),
  offers('Offers'),
  ;

  final String label;
  const RefinementType(this.label);
}

class RefinementFilter extends StatelessWidget {
  final Function(RefinementType) onSelectedRefineFilter;
  final VoidCallback onOpenFilter;
  final Set<RefinementType> selectedRefinement;
  const RefinementFilter(
      {super.key,
      required this.onSelectedRefineFilter,
      required this.selectedRefinement,
      required this.onOpenFilter});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.spaceSM),
      child: Row(
        children: RefinementType.values.map((refine) {
          return AppChip(
              label: refine.label,
              isSelected: refine == RefinementType.filters
                  ? false
                  : selectedRefinement.contains(refine),
              onSelected: refine == RefinementType.filters
                  ? (_) => onOpenFilter()
                  : (_) => onSelectedRefineFilter(refine));
        }).toList(),
      ),
    );
  }
}
