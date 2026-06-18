import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/theme/app_typography.dart';

// ─────────────────────────────────────────────────────────────
// LIGHT THEME
// ─────────────────────────────────────────────────────────────
ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        primaryContainer: AppColors.primaryContainer,
        onPrimaryContainer: AppColors.onPrimaryContainer,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        secondaryContainer: AppColors.secondaryContainer,
        onSecondaryContainer: AppColors.onSecondaryContainer,
        tertiary: AppColors.tertiary,
        onTertiary: AppColors.onTertiary,
        tertiaryContainer: AppColors.tertiaryContainer,
        onTertiaryContainer: AppColors.onTertiaryContainer,
        error: AppColors.error,
        onError: AppColors.onError,
        errorContainer: AppColors.errorContainer,
        onErrorContainer: AppColors.onErrorContainer,
        surface: AppColors.surfaceLight,
        surfaceContainer: AppColors.surfaceContainerLight,
        onSurface: AppColors.onSurfaceLight,
        surfaceContainerHighest: AppColors.surfaceVariantLight,
        onSurfaceVariant: AppColors.onSurfaceVariantLight,
        outline: AppColors.outlineLight,
        outlineVariant: AppColors.outlineVariantLight,
      ),
      scaffoldBackgroundColor: AppColors.surfaceLight,

      // ── Text Theme ─────────────────────────────────────────────
      // Every slot that AppTypography defines is wired here.
      // This guarantees Poppins is always used.
      textTheme: TextTheme(
        // Display
        displayLarge: AppTypography.displayLarge.copyWith(
          color: AppColors.textHighLight,
        ),
        displayMedium: AppTypography.displayMedium.copyWith(
          color: AppColors.textHighLight,
        ),

        // Headline
        headlineLarge: AppTypography.headlineLarge.copyWith(
          color: AppColors.textHighLight,
        ),
        headlineMedium: AppTypography.headlineMedium.copyWith(
          color: AppColors.textHighLight,
        ),
        headlineSmall: AppTypography.headlineSmall.copyWith(
          color: AppColors.textHighLight,
        ),

        // Title
        titleLarge: AppTypography.titleLarge.copyWith(
          color: AppColors.textHighLight,
        ),
        titleMedium: AppTypography.titleMedium.copyWith(
          color: AppColors.textHighLight,
        ),
        titleSmall: AppTypography.titleSmall.copyWith(
          color: AppColors.textMediumLight,
        ),

        // Body
        bodyLarge: AppTypography.bodyLarge.copyWith(
          color: AppColors.textMediumLight,
        ),
        bodyMedium: AppTypography.bodyMedium.copyWith(
          color: AppColors.textMediumLight,
        ),

        // Label
        labelLarge: AppTypography.labelLarge.copyWith(
          color: AppColors.textHighLight,
        ),
        labelMedium: AppTypography.labelMedium.copyWith(
          color: AppColors.textLowLight,
        ),
        labelSmall: AppTypography.labelSmall.copyWith(
          color: AppColors.textLowLight,
        ),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.surfaceLight,
        foregroundColor: AppColors.textHighLight,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          ),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.outlineLight),
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: AppColors.primary),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceVariantLight,
        hintStyle: AppTypography.bodyLarge.copyWith(
          color: AppColors.textDisabledLight,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          borderSide: const BorderSide(color: AppColors.outlineLight),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          borderSide: const BorderSide(color: AppColors.outlineVariantLight),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          borderSide: const BorderSide(color: AppColors.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          borderSide: const BorderSide(color: AppColors.error, width: 2),
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.surfaceLight,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
          side: const BorderSide(color: AppColors.outlineVariantLight),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.surfaceVariantLight,
        labelStyle: AppTypography.labelMedium.copyWith(
          color: AppColors.onSurfaceVariantLight,
        ),
        side: const BorderSide(color: AppColors.outlineVariantLight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusXS),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.outlineVariantLight,
        thickness: 1,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.surfaceLight,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textLowLight,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColors.surfaceLight,
        indicatorColor: AppColors.primaryContainer,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppTypography.labelMedium.copyWith(
              color: AppColors.onPrimaryContainer,
            );
          }
          return AppTypography.labelMedium
              .copyWith(color: AppColors.textLowLight);
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: AppColors.onPrimaryContainer);
          }
          return const IconThemeData(color: AppColors.textLowLight);
        }),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.onSurfaceLight,
        contentTextStyle: AppTypography.bodyLarge.copyWith(
          color: AppColors.surfaceLight,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
        ),
        behavior: SnackBarBehavior.floating,
      ),
      iconTheme: const IconThemeData(color: AppColors.textMediumLight),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
      ),
    );

// ─────────────────────────────────────────────────────────────
// DARK THEME
// ─────────────────────────────────────────────────────────────
ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryDark,
        onPrimary: AppColors.onPrimaryDark,
        primaryContainer: AppColors.primaryContainerDark,
        onPrimaryContainer: AppColors.onPrimaryContainerDark,
        secondary: AppColors.secondaryDark,
        onSecondary: AppColors.onSecondaryDark,
        secondaryContainer: AppColors.secondaryContainerDark,
        onSecondaryContainer: AppColors.onSecondaryContainerDark,
        tertiary: AppColors.tertiaryDark,
        onTertiary: AppColors.onTertiaryDark,
        tertiaryContainer: AppColors.tertiaryContainerDark,
        onTertiaryContainer: AppColors.onTertiaryContainerDark,
        error: AppColors.errorDark,
        onError: AppColors.onErrorDark,
        errorContainer: AppColors.errorContainerDark,
        onErrorContainer: AppColors.onErrorContainerDark,
        surface: AppColors.surfaceDark,
        surfaceContainer: AppColors.surfaceContainer,
        onSurface: AppColors.onSurfaceDark,
        surfaceContainerHighest: AppColors.surfaceVariantDark,
        onSurfaceVariant: AppColors.onSurfaceVariantDark,
        outline: AppColors.outlineDark,
        outlineVariant: AppColors.outlineVariantDark,
      ),
      scaffoldBackgroundColor: AppColors.surfaceDark,

      // ── Text Theme ─────────────────────────────────────────────
      // Identical structure to light — only colors swap to dark variants.
      textTheme: TextTheme(
        // Display
        displayLarge: AppTypography.displayLarge.copyWith(
          color: AppColors.textHighDark,
        ),
        displayMedium: AppTypography.displayMedium.copyWith(
          color: AppColors.textHighDark,
        ),

        // Headline
        headlineLarge: AppTypography.headlineLarge.copyWith(
          color: AppColors.textHighDark,
        ),
        headlineMedium: AppTypography.headlineMedium.copyWith(
          color: AppColors.textHighDark,
        ),
        headlineSmall: AppTypography.headlineSmall.copyWith(
          color: AppColors.textHighDark,
        ),

        // Title
        titleLarge: AppTypography.titleLarge.copyWith(
          color: AppColors.textHighDark,
        ),
        titleMedium: AppTypography.titleMedium.copyWith(
          color: AppColors.textHighDark,
        ),
        titleSmall: AppTypography.titleSmall.copyWith(
          color: AppColors.textMediumDark,
        ),

        // Body
        bodyLarge: AppTypography.bodyLarge.copyWith(
          color: AppColors.textMediumDark,
        ),
        bodyMedium: AppTypography.bodyMedium.copyWith(
          color: AppColors.textMediumDark,
        ),

        // Label
        labelLarge: AppTypography.labelLarge.copyWith(
          color: AppColors.textHighDark,
        ),
        labelMedium: AppTypography.labelMedium.copyWith(
          color: AppColors.textLowDark,
        ),
        labelSmall:
            AppTypography.labelSmall.copyWith(color: AppColors.textLowDark),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.surfaceDark,
        foregroundColor: AppColors.textHighDark,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryDark,
          foregroundColor: AppColors.onPrimaryDark,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primaryDark,
          foregroundColor: AppColors.onPrimaryDark,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primaryDark,
          side: const BorderSide(color: AppColors.outlineDark),
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: AppColors.primaryDark),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceVariantDark,
        hintStyle: AppTypography.bodyLarge.copyWith(
          color: AppColors.textDisabledDark,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          borderSide: const BorderSide(color: AppColors.outlineDark),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          borderSide: const BorderSide(color: AppColors.outlineVariantDark),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          borderSide: const BorderSide(color: AppColors.primaryDark, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          borderSide: const BorderSide(color: AppColors.errorDark),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
          borderSide: const BorderSide(color: AppColors.errorDark, width: 2),
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.surfaceVariantDark,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
          side: const BorderSide(color: AppColors.outlineVariantDark),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.surfaceVariantDark,
        labelStyle: AppTypography.labelMedium.copyWith(
          color: AppColors.onSurfaceVariantDark,
        ),
        side: const BorderSide(color: AppColors.outlineVariantDark),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusXS),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.outlineVariantDark,
        thickness: 1,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.surfaceDark,
        selectedItemColor: AppColors.primaryDark,
        unselectedItemColor: AppColors.textLowDark,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColors.surfaceDark,
        indicatorColor: AppColors.primaryContainerDark,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppTypography.labelMedium.copyWith(
              color: AppColors.onPrimaryContainerDark,
            );
          }
          return AppTypography.labelMedium
              .copyWith(color: AppColors.textLowDark);
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: AppColors.onPrimaryContainerDark);
          }
          return const IconThemeData(color: AppColors.textLowDark);
        }),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.onSurfaceDark,
        contentTextStyle: AppTypography.bodyLarge.copyWith(
          color: AppColors.surfaceDark,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
        ),
        behavior: SnackBarBehavior.floating,
      ),
      iconTheme: const IconThemeData(color: AppColors.textMediumDark),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primaryDark,
      ),
    );
