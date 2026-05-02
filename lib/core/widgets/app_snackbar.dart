import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

enum SnackbarType { error, success, info }

class AppSnackbar {
  AppSnackbar._();

  static void show(
    BuildContext context, {
    required String message,
    SnackbarType type = SnackbarType.info,
  }) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final (backgroundColor, iconData) = switch (type) {
      SnackbarType.error => (
          colors.errorContainer,
          Icons.error_outline_rounded
        ),
      SnackbarType.success => (
          colors.primaryContainer,
          Icons.check_circle_outline_rounded
        ),
      SnackbarType.info => (
          colors.secondaryContainer,
          Icons.info_outline_rounded
        ),
    };

    final foregroundColor = switch (type) {
      SnackbarType.error => colors.onErrorContainer,
      SnackbarType.success => colors.onPrimaryContainer,
      SnackbarType.info => colors.onSecondaryContainer,
    };

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: backgroundColor,
          margin: const EdgeInsets.only(
            bottom: AppDimensions.spaceXXL,
            left: AppDimensions.spaceMD,
            right: AppDimensions.spaceMD,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          ),
          content: Row(
            children: [
              Icon(iconData, color: foregroundColor, size: 20),
              const SizedBox(width: AppDimensions.spaceSM),
              Expanded(
                child: Text(
                  message,
                  style: textTheme.bodyMedium?.copyWith(color: foregroundColor),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
