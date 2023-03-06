import 'package:dar/pages/onboarding_screen.dart';
import 'package:flutter/material.dart';

class DarApp extends StatelessWidget {
  const DarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xfffbf9f2),
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Color(0xFF162f11)),
        ),
      ),
      home: const OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
