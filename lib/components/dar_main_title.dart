import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarMainTitle extends StatefulWidget {
  const DarMainTitle({
    super.key,
    required this.MainTitle,
  });
  final String MainTitle;
  @override
  State<DarMainTitle> createState() => _DarMainTitleState();
}

class _DarMainTitleState extends State<DarMainTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.MainTitle,
      style: GoogleFonts.almarai(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.end,
    );
  }
}
