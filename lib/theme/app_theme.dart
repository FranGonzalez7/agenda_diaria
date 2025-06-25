// lib/theme/app_theme.dart

import 'package:flutter/material.dart';

class AppColors {
  static const primary = Colors.deepPurple;
  static const secondary = Colors.orange;
  static const background = Colors.white;
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
