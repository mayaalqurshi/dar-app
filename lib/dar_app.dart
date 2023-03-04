import 'package:dar/pages/onboarding_screen.dart';
import 'package:flutter/material.dart';

class DarApp extends StatelessWidget {
  const DarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
        ),
      ),
      home: const OnboardingScreen(),
    );
  }
}
