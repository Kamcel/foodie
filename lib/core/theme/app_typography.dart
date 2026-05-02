import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTypography {
  static const _fontFamily = 'Poppins';

  // ── Display ────────────────────────────────────────────────────
  // Very large text — hero sections, splash screens only

  static TextStyle get displayLarge => GoogleFonts.fraunces(
        fontSize: AppDimensions.fontDisplayLg,
        fontWeight: FontWeight.bold,
        letterSpacing: -1.0,
      );

  static TextStyle get displayMedium => GoogleFonts.fraunces(
        fontSize: AppDimensions.fontDisplayMd,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5,
      );

  static TextStyle get displaySmall => GoogleFonts.fraunces(
        fontSize: AppDimensions.fontDisplaySm,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      );

  // ── Headline ───────────────────────────────────────────────────
  // Screen-level titles and onboarding text

  static TextStyle get headlineLarge => GoogleFonts.fraunces(
        fontSize: AppDimensions.fontHeadlineLg,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      );

  // Use this for prominent welcome/register text (28dp)

  static TextStyle get headlineMedium => GoogleFonts.fraunces(
        fontSize: AppDimensions.fontHeadlineMd,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      );

  static TextStyle get headlineSmall => TextStyle(
        fontFamily: _fontFamily,
        fontSize: AppDimensions.fontHeadlineSm,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      );

  // ── Title ──────────────────────────────────────────────────────
  // AppBar titles, card headers, dialog titles

  static TextStyle get titleLarge => GoogleFonts.fraunces(
        fontSize: AppDimensions.fontTitleLg,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      );

  static TextStyle get titleMedium => GoogleFonts.fraunces(
        fontSize: AppDimensions.fontTitleMd,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.1,
      );

  static TextStyle get titleSmall => GoogleFonts.fraunces(
        fontSize: AppDimensions.fontTitleSm,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.1,
      );

  // ── Body ───────────────────────────────────────────────────────
  // Paragraphs, descriptions, content text

  static TextStyle get bodyLarge => TextStyle(
        fontFamily: _fontFamily,
        fontSize: AppDimensions.fontBodyLg,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      );

  static TextStyle get bodyMedium => TextStyle(
        fontFamily: _fontFamily,
        fontSize: AppDimensions.fontBodyMd,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      );

  // ── Label ──────────────────────────────────────────────────────
  // Buttons, chips, badges, timestamps

  static TextStyle get labelLarge => TextStyle(
        fontFamily: _fontFamily,
        fontSize: AppDimensions.fontLabelLg,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.1,
      );

  static TextStyle get labelMedium => TextStyle(
        fontFamily: _fontFamily,
        fontSize: AppDimensions.fontLabelMd,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      );

  static TextStyle get labelSmall => TextStyle(
        fontFamily: _fontFamily,
        fontSize: AppDimensions.fontLabelSm,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      );
}
