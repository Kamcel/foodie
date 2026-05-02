import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class Information extends StatelessWidget {
  final String title;
  final String? description;
  final Widget icon;
  final Color containerColor;
  final Color onContainerColor;

  const Information(
      {super.key,
      required this.title,
      this.description,
      required this.icon,
      required this.containerColor,
      required this.onContainerColor});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spaceMD, vertical: AppDimensions.spaceMD),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
        color: containerColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          SizedBox(width: AppDimensions.spaceSM),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme.bodyLarge?.copyWith(color: onContainerColor),
              ),
              // SizedBox(
              //   height: AppDimensions.spaceXS,
              // ),
              Text(
                description ?? '',
                style: textTheme.bodySmall?.copyWith(color: onContainerColor),
              )
            ],
          ))
        ],
      ),
    );
  }
}
