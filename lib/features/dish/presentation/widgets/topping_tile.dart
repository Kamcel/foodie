import 'package:flutter/material.dart';

class ToppingTile extends StatelessWidget {
  final String topping;
  final double price;
  final bool isSelected;
  const ToppingTile(
      {super.key,
      required this.topping,
      required this.price,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(topping),
        Row(
          children: [
            Text(price.toStringAsFixed(2)),
            SizedBox(
              width: 4,
            ),
            Checkbox(
              value: isSelected,
              fillColor: WidgetStateProperty.all(colors.primary),
              onChanged: (_) {},
            )
          ],
        )
      ],
    );
  }
}
