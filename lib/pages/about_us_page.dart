import 'package:flutter/material.dart';

import '../components/dar_drawer.dart';
import '../components/developer_card.dart';
import '../components/title1.dart';

class AboutUsPages extends StatelessWidget {
  const AboutUsPages({super.key});

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
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Title1('عن التطبيق'),
            const SizedBox(height: 10),
            const Title1(
                ' التطبيق يسهل للشخص البحث عن اكثر التطبيقات استخداماً في المنطقة وماهي الفعاليات الموجودة وبإمكانه التواصل مع اهل المنطقة او مترجمين لتقديم المساعدة'),
            const SizedBox(height: 20),
            const Title1('المطورين '),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                  DeveloperCard(
                    textName: 'مايا القرشي',
                    // linkedIn: 'https://www.linkedin.com/in/maya-alqurshi-540122158',
                  ),
                  DeveloperCard(
                    textName: 'رهف القحطاني',
                    // linkedIn: 'https://www.linkedin.com/in/rahaf-alqahtani-405bb1216',
                  ),
                  DeveloperCard(
                    textName: 'شهد السبيعي',
                    // linkedIn: 'https://www.linkedin.com/in/shahad-alsubaie-cs/',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xfffbf9f2),
    );
  }
}
