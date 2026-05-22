import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:lottie/lottie.dart';

class DishError extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const DishError({super.key, required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
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
              child: Lottie.asset('assets/animations/bicycle-guy.json',
                  repeat: true),
            ),
            SizedBox(height: 16),
            Text('It\'s not you, it\'s us', style: textTheme.titleLarge),
            SizedBox(height: 8),
            Text('Please try again', style: textTheme.bodyMedium),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: colors.primary),
              onPressed: onRetry,
              child: Text('Try again',
                  style:
                      textTheme.bodyLarge?.copyWith(color: colors.onPrimary)),
            ),
          ],
        ),
      ),
    );
  }
}
