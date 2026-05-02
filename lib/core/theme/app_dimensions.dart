import 'package:foodie/core/utils/size_utils.dart';

abstract class AppDimensions {
  // ── Images ────────────────────────────────────────────────────
  static double get imageXXL => SizeUtils.scale(180);
  static double get imageXL => SizeUtils.scale(140);
  static double get imageLG => SizeUtils.scale(110);
  static double get imageMD => SizeUtils.scale(80);
  static double get imageSM => SizeUtils.scale(60);

  // ── Icons ─────────────────────────────────────────────────────
  static double get iconXL => SizeUtils.scale(40);
  static double get iconLG => SizeUtils.scale(32);
  static double get iconMD => SizeUtils.scale(24);
  static double get iconSM => SizeUtils.scale(20);

  // ── Border Radius ─────────────────────────────────────────────
  static double get radiusXL => SizeUtils.scale(32);
  static double get radiusLG => SizeUtils.scale(24);
  static double get radiusMD => SizeUtils.scale(16);
  static double get radiusSM => SizeUtils.scale(12);
  static double get radiusXS => SizeUtils.scale(8);

  // ── Spacing (not scaled — layout-relative) ────────────────────
  static const double spaceXXL = 48;
  static const double spaceXL = 32;
  static const double spaceLG = 24;
  static const double spaceMD = 16;
  static const double spaceSM = 12;
  static const double spaceXS = 8;
  static const double spaceXXS = 4;

  // ── Button heigh ────────────────────
  static const double buttonHeight = 52;

  // ── Font Sizes (scaled to screen) ─────────────────────────────
  // Display
  static double get fontDisplayLg => SizeUtils.scale(57); // hero only
  static double get fontDisplayMd => SizeUtils.scale(45); // splash screens
  static double get fontDisplaySm => SizeUtils.scale(36); // Card titles

  // Headline
  static double get fontHeadlineLg => SizeUtils.scale(32); // screen titles
  static double get fontHeadlineMd =>
      SizeUtils.scale(28); // welcome/register text
  static double get fontHeadlineSm => SizeUtils.scale(24); // section titles

  // Title
  static double get fontTitleLg => SizeUtils.scale(22); // AppBar, dialogs
  static double get fontTitleMd => SizeUtils.scale(18); // card headers
  static double get fontTitleSm => SizeUtils.scale(14); // subtitles

  // Body
  static double get fontBodyLg => SizeUtils.scale(16); // main body
  static double get fontBodyMd => SizeUtils.scale(14); // secondary body

  // Label
  static double get fontLabelLg => SizeUtils.scale(14); // buttons
  static double get fontLabelMd => SizeUtils.scale(12); // chips, captions
  static double get fontLabelSm => SizeUtils.scale(11); // timestamps, badges
}
