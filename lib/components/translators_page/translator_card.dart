import 'package:dar/components/translators_page/contact_trans_section_card.dart';
import 'package:dar/components/translators_page/info_trans_section_card.dart';
import 'package:dar/model/trans_list.dart';
import 'package:flutter/material.dart';

class TranslatorCard extends StatefulWidget {
  const TranslatorCard({
    Key? key,
    required this.translator,
  }) : super(key: key);
  final TransList translator;

  @override
  State<TranslatorCard> createState() => _TranslatorCardState();
}

class _TranslatorCardState extends State<TranslatorCard> {
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
              child: InfoTransSectionCard(
                translator: widget.translator,
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
        ContactTransSectionCard(
          contact: widget.translator,
        ),
      ]),
    );
  }
}
