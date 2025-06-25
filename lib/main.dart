import 'package:agenda_diaria/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agenda Diaria',
      theme: AppTheme.blueTheme,
      home: const HomeScreen(),
    );
  }
}
