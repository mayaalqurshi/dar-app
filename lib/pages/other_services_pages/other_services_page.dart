import 'package:dar/components/dar_button.dart';
import 'package:dar/components/dar_drawer.dart';
import 'package:dar/components/dar_main_title.dart';
import 'package:dar/pages/other_services_pages/search_for_citizens.dart';
import 'package:dar/pages/other_services_pages/search_for_translators.dart';
import 'package:flutter/material.dart';

class OtherServicesPage extends StatelessWidget {
  const OtherServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const DarDrawer(),
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
