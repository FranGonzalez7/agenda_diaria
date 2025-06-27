import 'package:flutter/material.dart';
import 'package:agenda_diaria/theme/app_theme.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 12,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1), // fondo suave
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.primary, width: 4),
          ),
          child: Center(
            child: Text(
              'Agenda diaria',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
