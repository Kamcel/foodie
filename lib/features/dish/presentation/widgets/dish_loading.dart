import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class DishLoading extends StatelessWidget {
  const DishLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(color: colors.surfaceContainerHighest),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppDimensions.spaceMD),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 28,
                    width: 200,
                    decoration: BoxDecoration(
                        color: colors.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(4))),
                SizedBox(height: 12),
                Container(
                    height: 16,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: colors.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(4))),
                SizedBox(height: 8),
                Container(
                    height: 16,
                    width: 250,
                    decoration: BoxDecoration(
                        color: colors.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(4))),
                SizedBox(height: 24),
                Container(
                    height: 24,
                    width: 100,
                    decoration: BoxDecoration(
                        color: colors.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(4))),
                SizedBox(height: 32),
                Container(
                    height: 20,
                    width: 80,
                    decoration: BoxDecoration(
                        color: colors.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(4))),
                SizedBox(height: 12),
                Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: colors.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8))),
                SizedBox(height: 8),
                Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: colors.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8))),
                SizedBox(height: 8),
                Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: colors.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8))),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
