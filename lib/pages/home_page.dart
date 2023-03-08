import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/dar_drawer.dart';
import '../components/dar_drop_button.dart';
import '../components/dar_most_used_apps.dart';
import '../components/dar_search_card.dart';
import '../model/mAppUsed.dart';
import 'sections_pages/all_sections_page.dart';

List<DarMenuItem> list = [
  DarMenuItem(id: '1', name: 'الرياض'),
  DarMenuItem(id: '2', name: 'مكة'),
  DarMenuItem(id: '3', name: 'المدينة'),
  DarMenuItem(id: '4', name: 'جدة'),
  DarMenuItem(id: '5', name: 'الشرقية'),
  DarMenuItem(id: '6', name: 'ابها'),
];

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cityId = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Image.asset(
          //   'assets/img/darlogo.jpg',
          //   width: 160,
          // ),
          ),
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
                    DarDropdownButton(
                      onMenuChanged: (newValue) {
                        setState(() {
                          cityId = newValue;
                        });
                      },
                    ),
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
                for (final mAppUsed in MAppUsed.mAppUsed)
                  if (mAppUsed.cityId == cityId)
                    MostUsedApps(
                      mAppUsed: mAppUsed,
                    ),
                const SizedBox(
                  height: 12,
                ),
                // Text(
                //   'الأقسام',
                //   style: GoogleFonts.markaziText(fontSize: 20),
                // ),
                // const SizedBox(
                //   height: 12,
                // ),
                // DarButton(
                //   textButton: 'تطبيقات التوصيل',
                //   onTap: () {},
                // ),
                // const SizedBox(
                //   height: 12,
                // ),
                // DarButton(
                //   textButton: 'الفعاليات',
                //   onTap: () {},
                // ),
                // const SizedBox(
                //   height: 12,
                // ),
                // DarButton(
                //   textButton: 'تطبيقات المواصلات',
                //   onTap: () {},
                // ),
                // const SizedBox(
                //   height: 12,
                // ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AllSectionsPage(),
                      ),
                    );
                  },
                  child: Text('جميع الأقسام',
                      style: GoogleFonts.markaziText(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF162f11))),
                ),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: const Color(0xFF959595),
      //   child: const Icon(
      //     Icons.headset_mic,
      //     color: Colors.black,
      //   ),
      // ),
      // Drawer
      endDrawer: const DarDrawer(),
      backgroundColor: const Color(0xfffbf9f2),
    );
  }
}

class DarMenuItem {
  String id;
  String name;

  DarMenuItem({required this.id, required this.name});
}
