import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/section_model.dart';
import '../pages/sections_pages/section_page.dart';

class SectionCard extends StatefulWidget {
  const SectionCard({
    super.key,
    required this.categories,
  });
  final Category categories;

  @override
  State<SectionCard> createState() => _SectionCardState();
}

class _SectionCardState extends State<SectionCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SectionPage(
              catId: widget.categories,
            ),
          ),
        );
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffaab9a9),
        ),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 90,
                // clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(20),
                  color: Color(0xffaab9a9),
                ),
                child: Image.network(
                  widget.categories.image,
                  height: 90,
                ),
              ),
              Text(
                widget.categories.name,
                style: GoogleFonts.markaziText(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
