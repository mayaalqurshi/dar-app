import 'package:dar/model/trans_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoTransSectionCard extends StatefulWidget {
  const InfoTransSectionCard({
    Key? key,
    required this.translator,
  }) : super(key: key);
  final TransList translator;
  @override
  State<InfoTransSectionCard> createState() => _InfoTransSectionCardState();
}

class _InfoTransSectionCardState extends State<InfoTransSectionCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.translator.fullName,
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              ':الاسم',
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.translator.city,
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              ':المدينة',
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.translator.language,
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              ':اللغة',
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
