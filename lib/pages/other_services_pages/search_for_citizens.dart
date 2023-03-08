import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dar/components/dar_drawer.dart';
import 'package:dar/components/dar_floating_button.dart';
import 'package:dar/components/dar_main_title.dart';
import 'package:dar/components/locals_page/local_card.dart';
import 'package:dar/model/local_list.dart';
import 'package:dar/pages/other_services_pages/add_citizen_page.dart';
import 'package:flutter/material.dart';

class SearchForCitizens extends StatefulWidget {
  const SearchForCitizens({super.key});

  @override
  State<SearchForCitizens> createState() => _SearchForCitizensState();
}

class _SearchForCitizensState extends State<SearchForCitizens> {
  static List<LocalList> localInfo = [];
  @override
  void initState() {
    FirebaseFirestore.instance.collection('Locals').snapshots().listen((collection) {
      log('col count: ${collection.docs.length}');
      List<LocalList> newList = [];
      for (final doc in collection.docs) {
        final trans = LocalList.fromMap(doc.data());
        newList.add(trans);
      }
      localInfo = newList;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('Count: ${localInfo.length}');
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const DarDrawer(),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: DarMainTitle(
              MainTitle: 'المواطنين',
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
                    for (final local in localInfo)
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: LocalCard(
                          local: local,
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
              builder: (context) => const AddCitizens(),
            ),
          );
        },
      ),
    );
  }
}
