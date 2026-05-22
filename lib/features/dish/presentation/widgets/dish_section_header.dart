import 'package:flutter/material.dart';
import 'package:foodie/core/widgets/foodie_tag.dart';

class DishSectionHeader extends StatelessWidget {
  final String title;
  final Color tagBgColor;
  final Color textColor;
  final String tagName;

  const DishSectionHeader(
      {super.key,
      required this.title,
      required this.tagBgColor,
      required this.textColor,
      required this.tagName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        FoodieTag(
          label: tagName,
          color: tagBgColor,
        ),
      ],
    );
  }
}
