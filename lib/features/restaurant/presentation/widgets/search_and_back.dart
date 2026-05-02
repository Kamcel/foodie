import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class SearchAndBack extends StatefulWidget {
  final VoidCallback? onSearchTap;
  final VoidCallback? onBackTap;
  const SearchAndBack({
    super.key,
    this.onSearchTap,
    this.onBackTap,
    //required Null Function() onTap
  });

  @override
  State<SearchAndBack> createState() => _SearchAndBackState();
}

class _SearchAndBackState extends State<SearchAndBack> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Padding(
        padding: const EdgeInsets.only(
            left: AppDimensions.spaceMD,
            bottom: AppDimensions.spaceMD,
            right: AppDimensions.spaceMD),
        child: IntrinsicHeight(
          child: Row(
            children: [
              GestureDetector(
                onTap: widget.onBackTap,
                child: Container(
                  padding: EdgeInsets.all(AppDimensions.spaceXS),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppDimensions.radiusXS),
                      color: colors.surfaceContainer),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(
                width: AppDimensions.spaceSM,
              ),
              Expanded(
                  child: SizedBox(
                      child: TextField(
                controller: _searchController,
                onTap: widget.onSearchTap,
                readOnly: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      // size: 24,
                    ),
                    filled: false,
                    hintText: 'Search restaurants, dishes...',
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: AppDimensions.spaceMD,
                        vertical: AppDimensions.spaceSM)),
              )))
            ],
          ),
        ));
  }
}
