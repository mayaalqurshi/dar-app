import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/mAppUsed.dart';
import '../pages/home_page.dart';
import 'dar_most_used_apps.dart';

class DarDropdownButton extends StatefulWidget {
  const DarDropdownButton({super.key});

  @override
  State<DarDropdownButton> createState() => _DarDropdownButtonState();
}

class _DarDropdownButtonState extends State<DarDropdownButton> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      icon: const Icon(Icons.keyboard_arrow_down, size: 20),
      value: dropdownValue,
      elevation: 16,
      style: const TextStyle(color: Color(0xFF162f11), fontSize: 26),
      underline: Container(
        height: 1,
        color: const Color(0xFF162f11),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          // if (value == 'الرياض') {
          //   for (final mAppUsed in MAppUsed.mAppUsed) {
          //     if (mAppUsed.id == '2') {
          //       MostUsedApps(
          //         mAppUsed: mAppUsed,
          //       );
          //     }
          //   }
          // }
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: GoogleFonts.markaziText()),
        );
      }).toList(),
    );
  }
}
