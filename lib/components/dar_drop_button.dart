import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/home_page.dart';

class DarDropdownButton extends StatefulWidget {
  const DarDropdownButton({super.key, required this.onMenuChanged});
  final Function(String) onMenuChanged;
  @override
  State<DarDropdownButton> createState() => _DarDropdownButtonState();
}

class _DarDropdownButtonState extends State<DarDropdownButton> {
  DarMenuItem dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<DarMenuItem>(
      icon: const Icon(Icons.keyboard_arrow_down, size: 20),
      value: dropdownValue,
      elevation: 16,
      style: const TextStyle(color: Color(0xFF162f11), fontSize: 26),
      underline: Container(
        height: 1,
        color: const Color(0xFF162f11),
      ),
      onChanged: (value) {
        // This is called when the user selects an item.
        log(value!.id);
        setState(() {
          dropdownValue = value;
        });
        widget.onMenuChanged.call(value.id);
      },
      items: list.map<DropdownMenuItem<DarMenuItem>>((value) {
        return DropdownMenuItem<DarMenuItem>(
          value: value,
          child: Text(value.name, style: GoogleFonts.markaziText()),
        );
      }).toList(),
    );
  }
}
