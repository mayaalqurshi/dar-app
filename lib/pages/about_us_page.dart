import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/developer_card.dart';
import '../components/title1.dart';

class AboutUsPages extends StatefulWidget {
  const AboutUsPages({super.key});

  @override
  State<AboutUsPages> createState() => _AboutUsPagesState();
}

class _AboutUsPagesState extends State<AboutUsPages> {
  var _url = Uri.parse('');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xfffbf9f2),
        ),
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
                Image.asset(
                  'assets/img/Logo.jpg',
                  height: 160,
                ),
                const Title1(
                    ' التطبيق يسهل للشخص البحث عن اكثر التطبيقات استخداماً في المنطقة وماهي الفعاليات الموجودة وبإمكانه التواصل مع اهل المنطقة او مترجمين لتقديم المساعدة'),
                const SizedBox(height: 20),
                const Title1('المطورين '),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 20),
                      const SizedBox(height: 20),
                      DeveloperCard(
                        textName: 'مايا القرشي',
                        link: () {
                          _url = Uri.parse(
                            'https://www.linkedin.com/in/maya-alqurshi-540122158',
                          );
                          _launchUrl();
                        },
                      ),
                      DeveloperCard(
                        textName: 'رهف القحطاني',
                        link: () {
                          _url = Uri.parse(
                            'https://www.linkedin.com/in/rahaf-alqahtani-405bb1216',
                          );
                          _launchUrl();
                        },
                      ),
                      DeveloperCard(
                        textName: 'شهد السبيعي',
                        link: () {
                          _url = Uri.parse(
                            'https://www.linkedin.com/in/shahad-alsubaie-cs/',
                          );
                          _launchUrl();
                        },
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
