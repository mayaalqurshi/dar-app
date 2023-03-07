import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dar/components/dar_drawer.dart';
import 'package:dar/components/dar_floating_button.dart';
import 'package:dar/components/dar_main_title.dart';
import 'package:dar/components/translators_page/translator_card.dart';
import 'package:dar/model/trans_list.dart';
import 'package:dar/pages/other_services_pages/add_translator_page.dart';
import 'package:flutter/material.dart';

class SearchForTranslators extends StatefulWidget {
  const SearchForTranslators({super.key});

  @override
  State<SearchForTranslators> createState() => _SearchForTranslatorsState();
}

class _SearchForTranslatorsState extends State<SearchForTranslators> {
  static List<TransList> transInfo = [];
  @override
  void initState() {
    FirebaseFirestore.instance.collection('Translators').snapshots().listen((collection) {
      log('col count: ${collection.docs.length}');
      List<TransList> newList = [];
      for (final doc in collection.docs) {
        final trans = TransList.fromMap(doc.data());
        newList.add(trans);
      }
      transInfo = newList;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('Count: ${transInfo.length}');
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const DarDrawer(),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: DarMainTitle(
              MainTitle: 'المترجمين',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 600,
            child: Stack(children: [
              Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffC3C1BE),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    width: 600,
                    height: 664,
                  ),
                ],
              ),
              Positioned.fill(
                top: 20,
                right: 20,
                left: 20,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for (final trans in transInfo)
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TranslatorCard(
                          translator: trans,
                        ),
                      ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: DarFloatingButton(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTranslator(),
            ),
          );
        },
      ),
    );
  }
}
