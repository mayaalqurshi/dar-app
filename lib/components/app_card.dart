import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.bottomStart, children: [
      Container(
        height: 200,
        width: 360,
        decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text(
            'التطبيق الاول ',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      Container(
        height: 60,
        width: 360,
        decoration: BoxDecoration(
          color: const Color(0xFF959595),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 100, right: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.call, color: Colors.white),
              Icon(Icons.link, color: Colors.white),
              Icon(Icons.assistant_navigation, color: Colors.white)
            ],
          ),
        )),
      ),
    ]);
  }
}
