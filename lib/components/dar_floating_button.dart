import 'package:flutter/material.dart';

class DarFloatingButton extends StatelessWidget {
  const DarFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
