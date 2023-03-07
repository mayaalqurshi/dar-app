import 'package:dar/components/add_local_page/add_local_card.dart';
import 'package:dar/components/dar_drawer.dart';
import 'package:flutter/material.dart';

class AddCitizens extends StatefulWidget {
  const AddCitizens({super.key});

  @override
  State<AddCitizens> createState() => _AddCitizensState();
}

class _AddCitizensState extends State<AddCitizens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const DarDrawer(),
      body: SafeArea(
        child: Column(
          children: const [
            SizedBox(
              height: 40,
            ),
            AddLocalCard(),
          ],
        ),
      ),
    );
  }
}
