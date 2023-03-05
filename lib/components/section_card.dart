import 'package:dar/pages/sections_pages/section_page.dart';
import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SectionPage(),
          ),
        );
      },
      child: Container(
        height: 200,
        width: 360,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xffD9D9D9)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.restaurant),
            Text(
              'مطاعم',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
