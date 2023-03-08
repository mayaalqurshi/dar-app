import 'package:dar/pages/home_page.dart';
import 'package:dar/pages/other_services_pages/other_services_page.dart';
import 'package:dar/pages/sections_pages/all_sections_page.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const AllSectionsPage(),
      const OtherServicesPage(),
    ];
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: FlashyTabBar(
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.home, color: Color(0xffaab9a9)),
            title: const Text(
              'الصفحة الرئيسية',
              style: TextStyle(color: Color(0xffaab9a9)),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.list, color: Color(0xffaab9a9)),
            title: const Text(
              'الأقسام',
              style: TextStyle(color: Color(0xffaab9a9)),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.library_books, color: Color(0xffaab9a9)),
            title: const Text(
              'خدمات اخرى',
              style: TextStyle(color: Color(0xffaab9a9)),
            ),
          ),
        ],
        animationCurve: Curves.linear,
        selectedIndex: currentIndex,
        iconSize: 30,
        showElevation: false, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
      ),
    );
  }
}
