import 'package:flutter/material.dart';

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
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xffD9D9D9)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12, top: 18),
              child: Text(
                text,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ));
  }
}
