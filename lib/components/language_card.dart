import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({super.key, required this.stitle, required this.text1, required this.text2});
  final String stitle;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 360,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xffaab9a9)),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              // alignment:
              height: 30,
              width: 80,
              decoration: const BoxDecoration(color: Color(0xFF8C9E8B)),
              child: Row(
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Text(text1, style: GoogleFonts.markaziText(fontSize: 16)),
                  ))
                ],
              ),
            ),
            Container(
              // alignment:
              height: 30,
              width: 80,
              decoration: const BoxDecoration(color: Color(0xFFC4CBC3)),
              child: Row(
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Text(text2, style: GoogleFonts.markaziText(fontSize: 16)),
                  ))
                ],
              ),
            ),
            // const SizedBox(
            //   width: 100,
            // ),
            const Spacer(),
            Text(
              stitle,
              style: GoogleFonts.markaziText(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
