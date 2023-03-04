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
              Navigator.pop(context);
            },
          ),
          ListTile(
            trailing: const Text('خدمات اخرى'),
            onTap: () {
              Navigator.pop(context);
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
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
