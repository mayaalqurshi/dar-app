import 'package:dar/model/local_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoLocalSectionCard extends StatefulWidget {
  const InfoLocalSectionCard({
    Key? key,
    required this.local,
  }) : super(key: key);
  final LocalList local;
  @override
  State<InfoLocalSectionCard> createState() => _InfoLocalSectionCardState();
}

class _InfoLocalSectionCardState extends State<InfoLocalSectionCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.local.fullName,
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
              widget.local.city,
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
      ],
    );
  }
}
