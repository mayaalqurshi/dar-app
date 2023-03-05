import 'package:dar/pages/about_us.dart';
import 'package:dar/pages/home_page.dart';
import 'package:dar/pages/other_services_pages/other_services_page.dart';
import 'package:flutter/material.dart';

class DarDrawer extends StatelessWidget {
  const DarDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Text('لوقو'),
          ),
          ListTile(
            trailing: const Text('الصفحة الرئيسية'),
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
            trailing: const Text('خدمات اخرى'),
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
            trailing: const Text('اعدادات'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            trailing: const Text('نبذة عننا'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUs(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
