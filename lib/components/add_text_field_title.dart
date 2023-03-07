import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTextFieldTitle extends StatefulWidget {
  const AddTextFieldTitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  State<AddTextFieldTitle> createState() => _AddTextFieldTitleState();
}

class _AddTextFieldTitleState extends State<AddTextFieldTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
