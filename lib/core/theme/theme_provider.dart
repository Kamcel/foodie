import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'theme_state.dart';

part 'theme_provider.g.dart';

@Riverpod(keepAlive: true)
class ThemeController extends _$ThemeController {
  // Private constants scoped to the class — not leaking into global scope.
  static const _boxName = 'app_settings';
  static const _key = 'theme_pref';

  late final Box _box;

  @override
  ThemePreference build() {
    _box = Hive.box(_boxName);

    final saved = _box.get(_key);

    if (saved is String) {
      return ThemePreference.values.firstWhere(
        (m) => m.name == saved,
        orElse: () => ThemePreference.system,
      );
    }

    // Default: follow system on first launch.
    return ThemePreference.system;
  }

  /// Set a specific preference explicitly (e.g. from a settings screen).
  Future<void> set(ThemePreference pref) async {
    state = pref;
    await _box.put(_key, pref.name);
  }

  /// Cycles system → light → dark → system.
  /// Safe to call from a single toggle button.
  Future<void> cycle() async {
    await set(state.next);
  }
}

// fix: changed to keepAlive: true so it stays alive as long as
// ThemeController does — prevents stale reads after hot reload.
@Riverpod(keepAlive: true)
ThemeMode currentThemeMode(Ref ref) {
  return ref.watch(themeControllerProvider).toThemeMode;
}
