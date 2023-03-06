import 'package:flutter/material.dart';

import '../components/dar_drawer.dart';
import '../components/language_card.dart';
import '../components/setting_card.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/img/darlogo.jpg',
          width: 160,
        ),
      ),
      endDrawer: const DarDrawer(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            SizedBox(height: 80),
            LanguageCard(
              text1: 'Eng',
              stitle: 'اللغة',
              text2: 'عربي',
            ),
            SizedBox(height: 20),
            LanguageCard(
              text1: 'داكن',
              stitle: 'النمط',
              text2: 'فاتح',
            ),
            SizedBox(height: 20),
            SettingCard('مساعدة'),
            SizedBox(height: 20),
            SettingCard('تواصل معنا'),
          ],
        ),
      ),
    );
  }
}
