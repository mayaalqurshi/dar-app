import 'package:flutter/material.dart';

import '../components/developer_card.dart';
import '../components/title1.dart';

class AboutUsPages extends StatefulWidget {
  const AboutUsPages({super.key});

  @override
  State<AboutUsPages> createState() => _AboutUsPagesState();
}

class _AboutUsPagesState extends State<AboutUsPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/img/darlogo.jpg',
          width: 160,
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Title1('عن التطبيق'),
                const SizedBox(height: 10),
                Image.asset('assets/img/Logo.jpg'),
                const Title1(
                    ' التطبيق يسهل للشخص البحث عن اكثر التطبيقات استخداماً في المنطقة وماهي الفعاليات الموجودة وبإمكانه التواصل مع اهل المنطقة او مترجمين لتقديم المساعدة'),
                const SizedBox(height: 20),
                const Title1('المطورين '),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(height: 20),
                      SizedBox(height: 20),
                      DeveloperCard(
                        textName: 'مايا القرشي',
                        // linkedIn: 'https://www.linkedin.com/in/maya-alqurshi-540122158',
                      ),
                      DeveloperCard(
                        textName: 'رهف القحطاني',
                        // linkedIn: 'https://www.linkedin.com/in/rahaf-alqahtani-405bb1216',
                      ),
                      DeveloperCard(
                        textName: 'شهد السبيعي',
                        // linkedIn: 'https://www.linkedin.com/in/shahad-alsubaie-cs/',
                      ),
                    ],
                  ),
                ),
                // JellyAnim(
                //   radius: 100,
                //   colors: const [Color(0xffaab9a9)],
                //   allowOverFlow: true,
                //   viewPortSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
                //   //jellyPosition: JellyPosition.bottomCenter,
                // )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xfffbf9f2),
    );
  }
}
