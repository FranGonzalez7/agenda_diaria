import 'package:flutter/material.dart';
import 'package:agenda_diaria/theme/app_theme.dart';

class ParentAvatar extends StatelessWidget {
  const ParentAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2), // Grosor del borde
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.secondary, // Color del borde
          width: 3,
        ),
      ),
      child: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/stu3.png'),
        radius: 22,
      ),
    );
  }
}
