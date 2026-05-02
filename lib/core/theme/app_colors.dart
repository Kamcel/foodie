import 'package:flutter/material.dart';

abstract class AppColors {
  // ────────────────────────────────────────────────────────────
  // PRIMARY
  // ────────────────────────────────────────────────────────────
  static const primary = Color(0xFF954F00);
  static const onPrimary = Color(0xFFFFFFFF);
  static const primaryContainer = Color(0xFFFFD9AF);
  static const onPrimaryContainer = Color(0xFF2D1600);

  static const primaryDark = Color(0xFFFFB96B);
  static const onPrimaryDark = Color(0xFF4D2700);
  static const primaryContainerDark = Color(0xFF703A00);
  static const onPrimaryContainerDark = Color(0xFFFFD9AF);

  // ────────────────────────────────────────────────────────────
  // SECONDARY
  // ────────────────────────────────────────────────────────────
  static const secondary = Color(0xFF735A42);
  static const onSecondary = Color(0xFFFFFFFF);
  static const secondaryContainer = Color(0xFFFFDCBE);
  static const onSecondaryContainer = Color(0xFF291807);

  static const secondaryDark = Color(0xFFE2BE9C);
  static const onSecondaryDark = Color(0xFF422C17);
  static const secondaryContainerDark = Color(0xFF5A422B);
  static const onSecondaryContainerDark = Color(0xFFFFDCBE);

  // ────────────────────────────────────────────────────────────
  // TERTIARY
  // ────────────────────────────────────────────────────────────
  static const tertiary = Color(0xFF5B6330);
  static const onTertiary = Color(0xFFFFFFFF);
  static const tertiaryContainer = Color(0xFFDFE9A9);
  static const onTertiaryContainer = Color(0xFF191E00);

  static const tertiaryDark = Color(0xFFC2CD8F);
  static const onTertiaryDark = Color(0xFF2D3400);
  static const tertiaryContainerDark = Color(0xFF434B18);
  static const onTertiaryContainerDark = Color(0xFFDFE9A9);

  // ────────────────────────────────────────────────────────────
  // ERROR
  // ────────────────────────────────────────────────────────────
  static const error = Color(0xFFBA1A1A);
  static const onError = Color(0xFFFFFFFF);
  static const errorContainer = Color(0xFFFFDAD6);
  static const onErrorContainer = Color(0xFF410002);

  static const errorDark = Color(0xFFFFB4AB);
  static const onErrorDark = Color(0xFF690005);
  static const errorContainerDark = Color(0xFF93000A);
  static const onErrorContainerDark = Color(0xFFFFDAD6);

  // ────────────────────────────────────────────────────────────
  // SUCCESS
  // ────────────────────────────────────────────────────────────
  static const success = Color(0xFF2E7D32);
  static const onSuccess = Color(0xFFFFFFFF);
  static const successContainer = Color(0xFFB7F0B9);
  static const onSuccessContainer = Color(0xFF002107);

  static const successDark = Color(0xFF7EE081);
  static const onSuccessDark = Color(0xFF003909);
  static const successContainerDark = Color(0xFF1A5C1D);
  static const onSuccessContainerDark = Color(0xFFB7F0B9);

  // ────────────────────────────────────────────────────────────
  // WARNING
  // ────────────────────────────────────────────────────────────
  static const warning = Color(0xFF7A5800);
  static const onWarning = Color(0xFFFFFFFF);
  static const warningContainer = Color(0xFFFFDEA8);
  static const onWarningContainer = Color(0xFF261A00);

  static const warningDark = Color(0xFFFABB34);
  static const onWarningDark = Color(0xFF3F2E00);
  static const warningContainerDark = Color(0xFF5A4100);
  static const onWarningContainerDark = Color(0xFFFFDEA8);

  // ────────────────────────────────────────────────────────────
  // INFO
  // ────────────────────────────────────────────────────────────
  static const info = Color(0xFF00639B);
  static const onInfo = Color(0xFFFFFFFF);
  static const infoContainer = Color(0xFFCEE5FF);
  static const onInfoContainer = Color(0xFF001D35);

  static const infoDark = Color(0xFF99CBFF);
  static const onInfoDark = Color(0xFF003356);
  static const infoContainerDark = Color(0xFF004A77);
  static const onInfoContainerDark = Color(0xFFCEE5FF);

  // ────────────────────────────────────────────────────────────
  // SURFACE / BACKGROUND
  // ────────────────────────────────────────────────────────────
  static const surfaceLight = Color(0xFFFFF8F4);
  static const surfaceContainerLight = Color(0xFFF5F2F1);
  static const onSurfaceLight = Color(0xFF1F1209);

  static const surfaceDark = Color(0xFF0D0D0D);
  static const surfaceContainer = Color(0xFF211F1F);
  static const onSurfaceDark = Color(0xFFEFE0D0);

  static const surfaceVariantLight = Color(0xFFF3DEC8);
  static const onSurfaceVariantLight = Color(0xFF51442F);

  static const surfaceVariantDark = Color(0xFF51442F);
  static const onSurfaceVariantDark = Color(0xFFD7C3AC);

  // ────────────────────────────────────────────────────────────
  // OUTLINE
  // ────────────────────────────────────────────────────────────
  static const outlineLight = Color(0xFF847261);
  static const outlineVariantLight = Color(0xFFD7C3AC);

  static const outlineDark = Color(0xFF9E8D78);
  static const outlineVariantDark = Color(0xFF51442F);

  // ────────────────────────────────────────────────────────────
  // NEUTRAL / TEXT
  // ────────────────────────────────────────────────────────────
  static const textHighLight = Color(0xFF1F1209);
  static const textMediumLight = Color(0xFF4B3928);
  static const textLowLight = Color(0xFF7D6452);
  static const textDisabledLight = Color(0xFFB39887);

  static const textHighDark = Color(0xFFEFE0D0);
  static const textMediumDark = Color(0xFFD0B4A3);
  static const textLowDark = Color(0xFF997F6E);
  static const textDisabledDark = Color(0xFF64503F);

  // ────────────────────────────────────────────────────────────
  // CATEGORIES
  // ────────────────────────────────────────────────────────────
  static const indian = Color(0xFFE04B1A);
  static const onIndian = Color(0xFFFFFFFF);
  static const indianContainer = Color(0xFFFFDCD1);
  static const onIndianContainer = Color(0xFF3B0900);

  static const nigerian = Color(0xFF2E7D32);
  static const onNigerian = Color(0xFFFFFFFF);
  static const nigerianContainer = Color(0xFFB7F0B9);
  static const onNigerianContainer = Color(0xFF002107);

  static const italian = Color(0xFFC62828);
  static const onItalian = Color(0xFFFFFFFF);
  static const italianContainer = Color(0xFFFFDAD6);
  static const onItalianContainer = Color(0xFF410002);

  static const chinese = Color(0xFFC0392B);
  static const onChinese = Color(0xFFFFFFFF);
  static const chineseContainer = Color(0xFFFFDAD7);
  static const onChineseContainer = Color(0xFF410001);
}
