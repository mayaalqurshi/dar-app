import 'package:flutter/material.dart';

class AddTextField extends StatefulWidget {
  const AddTextField({
    Key? key,
    required this.textFieldController,
  }) : super(key: key);
  final TextEditingController textFieldController;
  @override
  State<AddTextField> createState() => _AddTextFieldState();
}

class _AddTextFieldState extends State<AddTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      height: 60,
      child: TextField(
        controller: widget.textFieldController,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
