import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class RecentSearchWidget extends StatelessWidget {
  final String searchName;
  final IconData?
      searchIcon; // for restaurant use restaurant icon, for dish use food icon etc
  final VoidCallback onTap;
  const RecentSearchWidget(
      {super.key,
      required this.searchName,
      this.searchIcon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(searchIcon),
            SizedBox(width: AppDimensions.spaceMD),
            Text(searchName)
          ],
        ),
        IconButton(
          icon: const Icon(
            Icons.close,
            size: 20,
          ),
          onPressed: () {
            //TODO: Delete search
          },
        )
      ],
    );
  }
}
