import 'package:dar/components/dar_floating_button.dart';
import 'package:flutter/material.dart';

class AddCitizens extends StatelessWidget {
  const AddCitizens({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('AddCitizens'),
      ),
      floatingActionButton: DarFloatingButton(),
    );
  }
}
