import 'package:flutter/material.dart';

class DarFloatingButton extends StatefulWidget {
  const DarFloatingButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  State<DarFloatingButton> createState() => _DarFloatingButtonState();
}

class _DarFloatingButtonState extends State<DarFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.onTap,
      backgroundColor: const Color(0xffAA5859),
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
