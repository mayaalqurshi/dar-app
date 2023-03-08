import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/dar_drawer.dart';
import '../components/dar_drop_button.dart';
import '../components/dar_most_used_apps.dart';
import '../components/dar_search_card.dart';
import '../model/mAppUsed.dart';

const List<String> list = <String>['الرياض', 'مكة', 'المدينة', 'جدة', 'الشرقية', 'ابها'];

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/img/Logo.jpg',
                  height: 180,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const DarDropdownButton(),
                    Text(':اختر المدينة ', style: GoogleFonts.markaziText(fontSize: 26))
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const DarSearchCard(),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'التطبيقات الأكثر استخدماً',
                  style: GoogleFonts.markaziText(fontSize: 26),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    for (final mAppUsed in MAppUsed.mAppUsed)
                      if (mAppUsed.id == '6')
                        MostUsedApps(
                          mAppUsed: mAppUsed,
                        ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
      endDrawer: const DarDrawer(),
      backgroundColor: const Color(0xfffbf9f2),
    );
  }
}
