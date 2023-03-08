import 'package:dar/components/add_translator_page/add_translator_card.dart';
import 'package:dar/components/dar_drawer.dart';
import 'package:dar/components/dar_main_title.dart';
import 'package:flutter/material.dart';

class AddTranslator extends StatefulWidget {
  const AddTranslator({super.key});

  @override
  State<AddTranslator> createState() => _AddTranslatorState();
}

class _AddTranslatorState extends State<AddTranslator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: DarMainTitle(
                MainTitle: 'اضافة مترجم',
              ),
            ),
            SizedBox(
              height: 40,
            ),
            AddTranslatorCard(),
          ],
        ),
      ),
    );
  }
}
