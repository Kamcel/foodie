import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class SpacebarPadding extends StatefulWidget {
  const SpacebarPadding({super.key});

  @override
  State<SpacebarPadding> createState() => _SpacebarPaddingState();
}

class _SpacebarPaddingState extends State<SpacebarPadding> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        // horizontal: AppDimensions.spaceSM,
        vertical: AppDimensions.spaceLG,
      ),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 32,
            ),
            suffix: Icon(Icons.filter_list),
            hintText: 'Search restaurants, dishes...',
            filled: true,
            fillColor: colors.surfaceContainer,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: colors.primary),
                borderRadius: BorderRadius.circular(AppDimensions.radiusXL)),
            enabledBorder: OutlineInputBorder(
                // borderSide: BorderSide(width: 2, color: colors.primary),
                borderRadius: BorderRadius.circular(AppDimensions.radiusXL))),
      ),
    );
  }
}
