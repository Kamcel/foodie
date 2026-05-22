import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const QuantitySelector(
      {super.key,
      required this.quantity,
      required this.onIncrement,
      required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
          color: colors.surfaceContainer,
          borderRadius: BorderRadius.circular(AppDimensions.radiusXS)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: onDecrement, icon: Icon(Icons.remove)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              quantity.toString(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          IconButton(onPressed: onIncrement, icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}
