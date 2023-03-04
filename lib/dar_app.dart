import 'package:flutter/material.dart';

import 'pages/clicked_section.dart';

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
      home: const ClickedSection(),
      debugShowCheckedModeBanner: false,
    );
  }
}
