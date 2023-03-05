import 'package:flutter/material.dart';

class DeveloperCard extends StatelessWidget {
  const DeveloperCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 18, top: 16),
      height: 80,
      width: 300,
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Text(
            'الاسم',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Linkedin',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
