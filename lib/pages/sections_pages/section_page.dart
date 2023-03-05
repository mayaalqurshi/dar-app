import 'package:flutter/material.dart';

import '../../components/app_card.dart';
import '../../components/dar_drawer.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 12,
            ),
            Text(
              'تطبيقات التوصيل',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            AppCard(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            AppCard(),
            SizedBox(
              height: 20,
            ),
            AppCard(),
          ],
        ),
      ),
      // Drawer
      endDrawer: const DarDrawer(),
      backgroundColor: const Color(0xFFF4EDED),
    );
  }
}
