import 'package:dar/components/title1.dart';
import 'package:flutter/material.dart';

import '../components/developer_card.dart';
import '../components/logo.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const InkWell(
          // onTap: () {
          //   Navigator.pop(context);
          // },
          child: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
          ),
        ),
        title: const Center(child: Logo()),
        actions: const [
          Center(
            child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Icon(
                  Icons.list,
                  color: Colors.black,
                )),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: const [
            SizedBox(height: 20),
            Title1('عن التطبيق'),
            SizedBox(height: 60),
            Title1('عن دار'),
            SizedBox(height: 80),
            DeveloperCard(),
            SizedBox(height: 20),
            DeveloperCard(),
            SizedBox(height: 20),
            DeveloperCard(),
          ],
        ),
      ),
      backgroundColor: const Color(0xffF4EDED),
    );
  }
}
