import 'package:dar/components/dar_drawer.dart';
import 'package:dar/components/title1.dart';
import 'package:flutter/material.dart';

import '../../components/section_card.dart';

class AllSectionsPage extends StatelessWidget {
  const AllSectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const DarDrawer(),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 68),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Title1('الأقسام')],
                ),
              ),
              const SizedBox(height: 50),
              const SectionCard(),
              const SizedBox(height: 20),
              const SectionCard(),
              const SizedBox(height: 20),
              const SectionCard(),
              const SizedBox(height: 20),
              const SectionCard(),
              const SizedBox(height: 50),
            ],
          )
        ],
      ),
      backgroundColor: const Color(0xffF4EDED),
    );
  }
}
