import 'package:flutter/material.dart';

class AppCheckboxTile extends StatelessWidget {
  final String name;
  final double price;
  final bool isSelected;
  final VoidCallback onTap;

  const AppCheckboxTile({
    super.key,
    required this.name,
    required this.price,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Expanded(child: Text(name)),
            Text('+₦${price.toStringAsFixed(2)}'),
            const SizedBox(width: 16),
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                color: isSelected ? colors.primary : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: isSelected ? colors.primary : colors.outline,
                  width: 1.5,
                ),
              ),
              child: isSelected
                  ? const Icon(Icons.check, size: 16, color: Colors.white)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
