import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class DarApp extends StatelessWidget {
  const DarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
