import 'package:dar/components/dar_floating_button.dart';
import 'package:flutter/material.dart';

class AddTranslator extends StatelessWidget {
  const AddTranslator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Text('AddTranslator'),
            Text(
              'الاسم الثلاثي',
              textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text(
                  'الاسم الثلاثي',
                ),
                enabledBorder: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: DarFloatingButton(
        onTap: () {},
      ),
    );
  }
}
