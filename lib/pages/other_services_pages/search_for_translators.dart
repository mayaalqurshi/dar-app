import 'package:dar/components/dar_drawer.dart';
import 'package:dar/components/dar_floating_button.dart';
import 'package:dar/components/dar_main_title.dart';
import 'package:dar/pages/other_services_pages/add_translator_page.dart';
import 'package:flutter/material.dart';

class SearchForTranslators extends StatelessWidget {
  const SearchForTranslators({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const DarDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              DarMainTitle(
                MainTitle: 'المترجمين',
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: DarFloatingButton(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTranslator()),
          );
        },
      ),
    );
  }
}
