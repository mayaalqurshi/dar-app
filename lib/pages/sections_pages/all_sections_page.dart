import 'package:flutter/material.dart';

import '../../components/dar_drawer.dart';
import '../../components/section_card.dart';
import '../../model/section_model.dart';

class AllSectionsPage extends StatelessWidget {
  const AllSectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/img/darlogo.jpg',
          width: 160,
        ),
      ),
      endDrawer: const DarDrawer(),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          for (final category in Category.categories)
            // ...[
            SectionCard(categories: category),
          const SizedBox(height: 20),
          // ],
        ],
      ),
      backgroundColor: const Color(0xfffbf9f2),
    );
  }
}
