import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Title1 extends StatelessWidget {
  const Title1(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.markaziText(fontSize: 25, fontWeight: FontWeight.w500, color: const Color(0xFF162f11)),
        ),
      ),
    );
  }
}
