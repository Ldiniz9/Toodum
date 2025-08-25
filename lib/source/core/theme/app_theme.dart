import 'package:toodum/source/core/theme/theme.dart';
import 'package:flutter/material.dart';

final class AppThemes {
  static ThemeData get defaultTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        headlineLarge: ThemeTypography.bold30,
        headlineMedium: ThemeTypography.bold16,
        headlineSmall: ThemeTypography.bold12,
        titleLarge: ThemeTypography.semiBold20,
        titleMedium: ThemeTypography.semiBold16,
        titleSmall: ThemeTypography.semiBold12,
        bodyLarge: ThemeTypography.regular16,
        bodyMedium: ThemeTypography.regular14,
        bodySmall: ThemeTypography.regular12,
        labelLarge: ThemeTypography.regular14,
        labelMedium: ThemeTypography.regular12,
        labelSmall: ThemeTypography.regular10,
      ),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: ThemeColors.secondary,
      ).copyWith(surface: Colors.white),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          disabledBackgroundColor: ThemeColors.grey3,
          backgroundColor: ThemeColors.primary,
          foregroundColor: Colors.white,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: ThemeColors.grey3,
          backgroundColor: ThemeColors.primary,
          foregroundColor: Colors.white,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ThemeColors.primary,
        foregroundColor: Colors.white,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          disabledForegroundColor: ThemeColors.grey3,
          backgroundColor: Colors.transparent,
          foregroundColor: ThemeColors.primary,
          side: BorderSide(color: ThemeColors.primary),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: ThemeColors.dark,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }
}
