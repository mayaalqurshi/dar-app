import 'package:dar/components/logo.dart';
import 'package:dar/components/title1.dart';
import 'package:flutter/material.dart';

import '../components/section_card.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({super.key});

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
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 68),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Title1('الأقسام')],
                ),
              ),
              const SizedBox(height: 50),
              const SectionCard(),
              const SizedBox(height: 20),
              const SectionCard(),
              const SizedBox(height: 20),
              const SectionCard(),
              const SizedBox(height: 20),
              const SectionCard(),
              const SizedBox(height: 50),
            ],
          )
        ],
      ),
      backgroundColor: const Color(0xffF4EDED),
    );
  }
}
