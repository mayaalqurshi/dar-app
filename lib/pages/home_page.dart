import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/dar_drawer.dart';
import '../components/dar_drop_button.dart';
import '../components/dar_most_used_apps.dart';
import '../components/dar_search_card.dart';
import 'sections_pages/all_sections_page.dart';

const List<String> list = <String>['الرياض', 'مكة', 'المدينة', 'جدة', 'الشرقية', 'ابها'];

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
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
                const MostUsedApps(),
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
