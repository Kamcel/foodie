import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';

/// A reusable primary button for all auth screens.
///
/// Handles three visual states automatically:
///   1. Normal    — shows [label], fully tappable
///   2. Loading   — shows a CircularProgressIndicator, tapping is disabled
///   3. Disabled  — greyed out, tapping is disabled
///
/// The parent screen owns the loading state and passes it in.
/// The button is intentionally dumb — it does not watch any provider.
/// This keeps it reusable across LoginScreen, RegisterScreen,
/// ForgotPasswordScreen, ResetPasswordScreen, and any future auth screen.
///
/// Usage:
///   AuthButton(
///     label: 'Login',
///     onPressed: _handleLogin,
///     isLoading: _isLoading,
///   )
class AppButton extends StatelessWidget {
  /// The text displayed when the button is in its normal state.
  final String label;

  /// Called when the button is tapped in its normal state.
  /// Receives null when [isLoading] is true or [isEnabled] is false,
  /// which automatically disables the button at the Flutter level.
  final VoidCallback? onPressed;

  /// When true, replaces the label with a loading spinner
  /// and prevents tapping. The parent screen sets this to true
  /// before calling the API and false when the call completes.
  final bool isLoading;

  /// Optional override to disable the button independently of loading state.
  /// Useful for disabling the button until form validation passes.
  /// Defaults to true (enabled).
  final bool isEnabled;

  /// Optional custom width. Defaults to double.infinity (full width).
  /// Most auth screens want full width, but this allows flexibility.
  final double? width;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.isEnabled = true,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // The button is interactive only when it is enabled AND not loading.
    // Passing null to onPressed is Flutter's built-in way to disable
    // a button — no need for manual colour overrides for the disabled state.
    final bool isInteractive = isEnabled && !isLoading;

    return SizedBox(
      width: width ?? double.infinity,
      height: AppDimensions.buttonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // When disabled, Flutter automatically applies the theme's
          // disabledBackgroundColor. We only need to specify the active colours.
          backgroundColor: colors.primary,
          foregroundColor: colors.onPrimary,
          // Slightly reduce opacity when disabled so the user gets
          // a clear visual signal that the button is not interactive.
          disabledBackgroundColor: colors.primary.withValues(alpha: 0.5),
          disabledForegroundColor: colors.onPrimary.withValues(alpha: 0.6),
          minimumSize:
              Size(width ?? double.infinity, AppDimensions.buttonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        // null onPressed = disabled at the Flutter level.
        // This disables tap feedback, ink splash, and the onPressed callback
        // in one move — no need to check isLoading inside onPressed manually.
        onPressed: isInteractive ? onPressed : null,
        child: _buildChild(colors, textTheme),
      ),
    );
  }

  /// Builds the button's inner content based on current state.
  ///
  /// Loading  → a small white CircularProgressIndicator
  /// Normal   → the label text
  ///
  /// AnimatedSwitcher wraps both so there is a smooth fade transition
  /// between the label and the spinner when isLoading changes.
  Widget _buildChild(ColorScheme colors, TextTheme textTheme) {
    return AnimatedSwitcher(
      // How long the fade between label and spinner takes
      duration: const Duration(milliseconds: 200),
      child: isLoading
          ? SizedBox(
              // key is required by AnimatedSwitcher to detect that the
              // child has changed and trigger the transition animation.
              key: const ValueKey('loading'),
              width: 22,
              height: 22,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                // Use onPrimary so the spinner is visible on the
                // primary-coloured button background in both light and dark.
                color: colors.onPrimary,
              ),
            )
          : Text(
              label,
              // key is required by AnimatedSwitcher — same reason as above.
              key: const ValueKey('label'),
              style: textTheme.titleLarge?.copyWith(
                color: colors.onPrimary,
              ),
            ),
    );
  }
}
