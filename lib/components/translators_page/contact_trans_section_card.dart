import 'package:dar/model/trans_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactTransSectionCard extends StatefulWidget {
  const ContactTransSectionCard({
    Key? key,
    required this.contact,
  }) : super(key: key);
  final TransList contact;
  @override
  State<ContactTransSectionCard> createState() => _ContactTransSectionCardState();
}

class _ContactTransSectionCardState extends State<ContactTransSectionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.contact.phoneNumber,
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                ':رقم الجوال',
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
                widget.contact.email,
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                ':البريد الالكتروني',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
