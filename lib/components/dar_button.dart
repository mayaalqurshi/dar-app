import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarButton extends StatefulWidget {
  const DarButton({
    super.key,
    required this.textButton,
    this.colorButton = const Color(0xff546E84),
    this.heightButton = 60,
    this.widthButton = 360,
    required this.onTap,
  });
  final String textButton;
  final Color colorButton;
  final double heightButton;
  final double widthButton;
  final VoidCallback onTap;

  @override
  State<DarButton> createState() => _DarButtonState();
}

class _DarButtonState extends State<DarButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.widthButton,
      height: widget.heightButton,
      child: ElevatedButton(
        onPressed: widget.onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.colorButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          widget.textButton,
          style: GoogleFonts.markaziText(fontSize: 24),
        ),
      ),
    );
  }
}
