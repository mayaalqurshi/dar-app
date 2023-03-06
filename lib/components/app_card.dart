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
          color: const Color((0xffaab9a9)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Image.network(
          'https://upload.wikimedia.org/wikipedia/ar/thumb/0/0b/Careem_logo_AR.svg/1280px-Careem_logo_AR.svg.png',
          width: 200,
        )
            //  Text(
            //   'التطبيق الاول ',
            //   style: TextStyle(fontSize: 20),
            // ),
            ),
      ),
      Container(
        height: 60,
        width: 360,
        decoration: BoxDecoration(
          // color: const Color(0xFF959595),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 100, right: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // Icon(Icons.call, color: Colors.white),
              Icon(Icons.link, color: Colors.white, size: 50),
              // Icon(Icons.assistant_navigation, color: Colors.white)
            ],
          ),
        )),
      ),
    ]);
  }
}
