import 'package:dar/components/dar_floating_button.dart';
import 'package:flutter/material.dart';

class AddTranslator extends StatelessWidget {
  const AddTranslator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('AddTranslator'),
      ),
      floatingActionButton: DarFloatingButton(),
    );
  }
}
