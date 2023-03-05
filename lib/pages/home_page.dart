import 'package:flutter/material.dart';

import '../components/dar_drawer.dart';
import '../components/dar_drop_button.dart';
import '../components/dar_most_used_apps.dart';
import '../components/dar_search_card.dart';

const List<String> list = <String>['الرياض', 'مكة', 'المدينة', 'جدة', 'الشرقية', 'ابها'];

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const DarDropdownButton(),
            const SizedBox(
              height: 12,
            ),
            const DarSearchCard(),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'التطبيقات الأكثر استخدماً',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 12,
            ),
            const MostUsedApps(),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'الأقسام',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 60,
              width: 360,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'تطبيقات التوصيل',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 60,
              width: 360,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'تطبيقات المواصلات',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'جميع الأقسام',
              style: TextStyle(decoration: TextDecoration.underline, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF959595),
        child: const Icon(
          Icons.headset_mic,
          color: Colors.black,
        ),
      ),
      // Drawer
      endDrawer: const DarDrawer(),
      backgroundColor: const Color(0xFFF4EDED),
    );
  }
}
