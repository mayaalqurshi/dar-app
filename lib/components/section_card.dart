import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/sections_pages/section_page.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({super.key, required this.title, required this.img});
  final String title;
  final String img;

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
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xffD9D9D9)),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.network(
              img,
              // 'https://www.viewsaudi.com/ar/wp-content/uploads/2022/07/%D9%85%D8%B7%D8%A7%D8%B9%D9%85-%D8%A7%D9%84%D8%B1%D8%A7%D8%B4%D8%AF-%D9%85%D9%88%D9%84-%D8%A7%D9%84%D8%AE%D8%A8%D8%B10.jpg',
              opacity: const AlwaysStoppedAnimation(.5),
              fit: BoxFit.fill,
              // color: Colors.white.withOpacity(0.100),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Icon(Icons.restaurant),
                Text(
                  title,
                  style: GoogleFonts.markaziText(
                      fontSize: 40, fontWeight: FontWeight.bold, color: const Color(0xFF162f11)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
