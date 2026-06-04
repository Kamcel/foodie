// order_empty.dart
import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:lottie/lottie.dart';

class OrderEmpty extends StatelessWidget {
  const OrderEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spaceMD),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Lottie.asset('assets/animations/food.json', repeat: true),
            ),
            SizedBox(height: 16),
            Text('No orders yet', style: textTheme.titleLarge),
            SizedBox(height: 8),
            Text('Your order history will appear here.',
                style: textTheme.bodyMedium, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
