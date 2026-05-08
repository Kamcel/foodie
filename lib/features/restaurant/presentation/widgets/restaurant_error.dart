import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:lottie/lottie.dart';

class RestaurantError extends StatelessWidget {
  final Future<void> Function() onRetry;
  final String message;

  const RestaurantError(
      {super.key, required this.onRetry, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spaceMD),
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
                'assets/animations/bicycle-guy.json',
                repeat: true,
              ),
            ),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),
            //text
            Text(
              'It\'s not you it\'s us',
              style: textTheme.titleLarge,
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            Text(
              'Please try again, we\'re sure this time it would work',
              style: textTheme.bodyLarge,
            ),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: colors.primary,
                ),
                onPressed: onRetry,
                child: Text(
                  'Try again',
                  style: textTheme.bodyLarge,
                ))
          ],
        ),
      ),
    );
  }
}
