import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/about_us_page.dart';
import '../pages/home_page.dart';
import '../pages/other_services_pages/other_services_page.dart';
import '../pages/setting_page.dart';

class DarDrawer extends StatelessWidget {
  const DarDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xfffbf9f2),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xfffbf9f2),
            ),
            child: Image.asset('assets/img/Logo.jpg'),
          ),
          ListTile(
            trailing: Text('الصفحة الرئيسية', style: GoogleFonts.markaziText(fontSize: 22)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          ListTile(
            trailing: Text('خدمات اخرى', style: GoogleFonts.markaziText(fontSize: 22)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OtherServicesPage(),
                ),
              );
            },
          ),
          ListTile(
            trailing: Text('اعدادات', style: GoogleFonts.markaziText(fontSize: 22)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingPage(),
                ),
              );
            },
          ),
          ListTile(
            trailing: Text('نبذة عنا', style: GoogleFonts.markaziText(fontSize: 22)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUsPages(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
