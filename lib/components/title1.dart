import 'package:flutter/material.dart';

class Title1 extends StatelessWidget {
  const Title1(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xff43316f)),
    );
  }
}
