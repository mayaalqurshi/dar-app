import 'package:flutter/material.dart';

import '../pages/home_page.dart';

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
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black, fontSize: 20),
      underline: Container(
        height: 1,
        color: Colors.black,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
