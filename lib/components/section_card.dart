import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 360,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(255, 221, 180, 228)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.restaurant),
          Text(
            'مطاعم',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
