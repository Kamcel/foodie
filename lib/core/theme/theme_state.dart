import 'package:flutter/material.dart';

enum ThemePreference { system, light, dark }

extension ThemePreferenceX on ThemePreference {
  ThemeMode get toThemeMode {
    switch (this) {
      case ThemePreference.light:
        return ThemeMode.light;
      case ThemePreference.dark:
        return ThemeMode.dark;
      case ThemePreference.system:
        return ThemeMode.system;
    }
  }

  /// 3-way cycle: system → light → dark → system
  ThemePreference get next {
    switch (this) {
      case ThemePreference.system:
        return ThemePreference.light;
      case ThemePreference.light:
        return ThemePreference.dark;
      case ThemePreference.dark:
        return ThemePreference.system;
    }
  }

  /// Icon to represent the current state in a toggle button.
  IconData get icon {
    switch (this) {
      case ThemePreference.system:
        return Icons.brightness_auto_rounded;
      case ThemePreference.light:
        return Icons.light_mode_rounded;
      case ThemePreference.dark:
        return Icons.dark_mode_rounded;
    }
  }

  /// Label to represent the current state.
  String get label {
    switch (this) {
      case ThemePreference.system:
        return 'System';
      case ThemePreference.light:
        return 'Light';
      case ThemePreference.dark:
        return 'Dark';
    }
  }
}
