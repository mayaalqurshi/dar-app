import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/app_card.dart';
import '../../components/dar_drawer.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/img/darlogo.jpg',
          width: 160,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Text(
              'تطبيقات التوصيل',
              style: GoogleFonts.markaziText(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const AppCard(),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const AppCard(),
            const SizedBox(
              height: 20,
            ),
            const AppCard(),
          ],
        ),
      ),
      // Drawer
      endDrawer: const DarDrawer(),
      backgroundColor: const Color(0xfffbf9f2),
    );
  }
}
