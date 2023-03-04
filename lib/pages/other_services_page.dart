import 'package:dar/components/dar_drawer.dart';
import 'package:flutter/material.dart';

class OtherServicesPage extends StatelessWidget {
  const OtherServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const DarDrawer(),
      body: const Center(child: Text('data')),
    );
  }
}
