import 'package:flutter/material.dart';

import '../../components/dar_button.dart';
import '../../components/dar_drawer.dart';
import '../../components/dar_main_title.dart';
import 'search_for_citizens.dart';
import 'search_for_translators.dart';

class OtherServicesPage extends StatelessWidget {
  const OtherServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xfffbf9f2),
        ),
        title: Image.asset(
          'assets/img/darlogo.jpg',
          width: 160,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const DarMainTitle(
              MainTitle: 'خدمات اخرى',
            ),
            const SizedBox(
              height: 20,
            ),
            DarButton(
              textButton: 'ابحث عن مترجمين',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchForTranslators(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            DarButton(
              textButton: 'ابحث عن مواطنين',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchForCitizens(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
