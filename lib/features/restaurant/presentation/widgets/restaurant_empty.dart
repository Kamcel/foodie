import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:lottie/lottie.dart';

class RestaurantEmpty extends StatelessWidget {
  const RestaurantEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spaceLG),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //illustration
            SizedBox(
              width: 200,
              height: 200,
              child: Lottie.asset(
                'assets/animations/food.json',
                repeat: true,
              ),
            ),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),
            //text
            Text(
              'Oops, can\'t find restaurants at the moment',
              style: textTheme.titleLarge,
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            Text(
              'Try adjusting your filters or search',
              style: textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
