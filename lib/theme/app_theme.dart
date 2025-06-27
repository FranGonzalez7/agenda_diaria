// lib/theme/app_theme.dart

import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF6621BA);
  static const secondary = Color(0xFFF98A17);
  static const background = Color(0xFFF5F5F5);
  static const lightBackgroung = Color.fromARGB(255, 230, 219, 244);
  static const card = Color(0xFFF7F7F7);
  static const text = Colors.black87;
}

class AppTheme {
  static ThemeData get blueTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.background,

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 2,
      ),

      bottomAppBarTheme: BottomAppBarTheme(color: AppColors.primary),

      dividerTheme: const DividerThemeData(
        color: AppColors.primary,
        thickness: 1.5,
        indent: 20,
        endIndent: 20,
      ),

      textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: 16, color: AppColors.text),
      ),
      fontFamily: 'Inter',

      cardColor: AppColors.card,

      chipTheme: ChipThemeData(
        selectedColor: AppColors.primary,
        secondarySelectedColor: AppColors.primary,
        checkmarkColor: AppColors.background,
        labelStyle: const TextStyle(color: AppColors.text),
        secondaryLabelStyle: const TextStyle(color: Colors.white),
        brightness: Brightness.light,
        padding: const EdgeInsets.symmetric(horizontal: 8),
      ),
    );
  }
}
