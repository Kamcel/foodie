import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  final double price;
  final VoidCallback? onPressed;
  const AddToCartButton(
      {super.key, required this.onPressed, required this.price});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: colors.primary,
            foregroundColor: Colors.white,
            minimumSize: Size(double.infinity, 48),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add to Cart',
              style: textTheme.titleMedium!.copyWith(color: Colors.white),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              '₦${price.toStringAsFixed(2)}',
              style: textTheme.titleMedium!.copyWith(color: Colors.white),
            )
          ],
        ));
  }
}
