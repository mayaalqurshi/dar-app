import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingCard extends StatelessWidget {
  const SettingCard(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 360,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xffaab9a9)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12, top: 18),
              child: Text(
                text,
                style: GoogleFonts.markaziText(fontSize: 18),
              ),
            ),
          ],
        ));
  }
}
