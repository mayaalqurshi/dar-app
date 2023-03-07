import 'package:dar/components/locals_page/contact_local_section_card.dart';
import 'package:dar/components/locals_page/info_local_section_card.dart';
import 'package:dar/model/local_list.dart';
import 'package:flutter/material.dart';

class LocalCard extends StatefulWidget {
  const LocalCard({
    Key? key,
    required this.local,
  }) : super(key: key);
  final LocalList local;

  @override
  State<LocalCard> createState() => _LocalCardState();
}

class _LocalCardState extends State<LocalCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 7,
          )
        ],
      ),
      width: 360,
      height: 200,
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xffACB9AA),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              width: 240,
              height: 120,
              child: InfoLocalSectionCard(
                local: widget.local,
              ),
            ),
            const Expanded(
              child: Icon(
                Icons.person_outlined,
                size: 80,
              ),
            )
          ],
        ),
        ContactLocalSectionCard(
          contact: widget.local,
        ),
      ]),
    );
  }
}
