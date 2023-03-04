import 'package:flutter/material.dart';

import '../components/dar_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: const [
            ListTile(
              trailing: Text('المدينة', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
      // Drawer
      endDrawer: const DarDrawer(),
      backgroundColor: Color.fromARGB(255, 231, 196, 194),
    );
  }
}
