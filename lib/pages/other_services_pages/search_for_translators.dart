import 'package:dar/components/dar_drawer.dart';
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
            children: const [
              TextField(
                decoration: InputDecoration(
                  label: Text('الاسم الثلاثي'),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
