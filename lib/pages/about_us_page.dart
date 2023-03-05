import 'package:dar/components/title1.dart';
import 'package:flutter/material.dart';

import '../components/dar_drawer.dart';
import '../components/developer_card.dart';

class AboutUsPages extends StatelessWidget {
  const AboutUsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const DarDrawer(),
      body: Center(
        child: Column(
          children: const [
            SizedBox(height: 20),
            Title1('عن التطبيق'),
            SizedBox(height: 60),
            Title1('عن دار'),
            SizedBox(height: 80),
            DeveloperCard(),
            SizedBox(height: 20),
            DeveloperCard(),
            SizedBox(height: 20),
            DeveloperCard(),
          ],
        ),
      ),
      backgroundColor: const Color(0xffF4EDED),
    );
  }
}
