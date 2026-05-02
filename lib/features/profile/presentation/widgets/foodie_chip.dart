import 'package:flutter/material.dart';

class FoodieChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  const FoodieChip(
      {super.key,
      required this.label,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => onTap(),
      showCheckmark: false,
      selectedColor: colors.primary,
      labelStyle: TextStyle(
        color: isSelected ? colors.primary : colors.outlineVariant,
      ),
    );
  }
}
