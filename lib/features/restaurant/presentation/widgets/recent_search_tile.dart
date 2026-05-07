import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

class RecentSearchTile extends StatelessWidget {
  final String label;
  final VoidCallback onCancel;
  final VoidCallback onOpen;
  const RecentSearchTile({
    super.key,
    required this.label,
    required this.onCancel,
    required this.onOpen,
    required int size,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: InkWell(
        splashColor: colors.surfaceContainer,
        onTap: onOpen,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spaceMD,
            vertical: AppDimensions.spaceXXS,
          ),
          decoration: BoxDecoration(
              color: colors.surface,
              border: Border(
                  bottom:
                      BorderSide(width: 1, color: colors.surfaceContainer))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: textTheme.bodyMedium),
              IconButton(
                onPressed: onCancel,
                icon: Icon(Icons.close, size: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
