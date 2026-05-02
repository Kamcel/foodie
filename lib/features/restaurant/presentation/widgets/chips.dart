import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class Chips extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color onBackground;
  final VoidCallback onTap;
  final bool isSelected;
  const Chips(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.onBackground,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spaceXS, vertical: AppDimensions.spaceXS),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(AppDimensions.radiusXL)),
        child: Text(
          title,
          style: TextStyle(color: onBackground),
        ),
      ),
    );
  }
}
