import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/dar_drop_button.dart';
import '../components/dar_most_used_apps.dart';
import '../components/explore_card.dart';
import '../model/mAppUsed.dart';

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
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xfffbf9f2),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffC3C1BE),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              // mmmmmmm
              width: 380,
              height: 440,
            ),
          ),
          ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/img/Logo.jpg',
                      height: 160,
                    ),
                    const SizedBox(
                      height: 40,
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
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          ':اختر المدينة ',
                          style: GoogleFonts.markaziText(fontSize: 26),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const ExploreCard(),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 10),
                      child: Row(
                        children: [
                          for (final mAppUsed in MAppUsed.mAppUsed.where((element) => element.cityId == cityId))
                            MostUsedApps(
                              mAppUsed: mAppUsed,
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xfffbf9f2),
    );
  }
}

class DarMenuItem {
  String id;
  String name;

  DarMenuItem({required this.id, required this.name});
}
