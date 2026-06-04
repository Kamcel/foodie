// order_loading.dart
import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class OrderLoading extends StatelessWidget {
  const OrderLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListView.builder(
      padding: const EdgeInsets.all(AppDimensions.spaceMD),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: AppDimensions.spaceSM),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: colors.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
            ),
          ),
        );
      },
    );
  }
}
