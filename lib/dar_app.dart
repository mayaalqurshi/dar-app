import 'package:flutter/material.dart';

import 'pages/onboarding_screen.dart';

class DarApp extends StatelessWidget {
  const DarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFD9D9D9),
        ),
      ),
      home: const OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
