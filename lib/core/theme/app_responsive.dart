import 'package:flutter/material.dart';
import 'app_breakpoints.dart';

abstract class AppResponsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < AppBreakpoints.mobile;

  static bool isTablet(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return w >= AppBreakpoints.mobile && w < AppBreakpoints.desktop;
  }

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= AppBreakpoints.desktop;

  /// Returns [desktop] on desktop, [tablet] on tablet, [mobile] otherwise.
  /// Falls back up the chain if a narrower value is omitted.
  ///
  /// ```dart
  /// final columns = AppResponsive.value(
  ///   context: context,
  ///   mobile:  1,
  ///   tablet:  2,
  ///   desktop: 3,
  /// );
  /// ```
  static T value<T>({
    required BuildContext context,
    required T mobile,
    T? tablet,
    T? desktop,
  }) {
    if (isDesktop(context)) return desktop ?? tablet ?? mobile;
    if (isTablet(context)) return tablet ?? mobile;
    return mobile;
  }
}
