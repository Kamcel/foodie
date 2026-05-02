import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class Choice extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color onBackground;
  const Choice(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.onBackground});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.spaceXS),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(AppDimensions.radiusXS)),
      child: Text(
        title,
        style: TextStyle(color: onBackground),
      ),
    );
  }
}
