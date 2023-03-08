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

      //  Container(
      //   height: 200,
      //   width: 360,
      //   clipBehavior: Clip.hardEdge,
      //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xffD9D9D9)),
      //   child: Stack(
      //     alignment: AlignmentDirectional.center,
      //     children: [
      //       Image.network(
      //         widget.categories.image,
      //         // 'https://www.viewsaudi.com/ar/wp-content/uploads/2022/07/%D9%85%D8%B7%D8%A7%D8%B9%D9%85-%D8%A7%D9%84%D8%B1%D8%A7%D8%B4%D8%AF-%D9%85%D9%88%D9%84-%D8%A7%D9%84%D8%AE%D8%A8%D8%B10.jpg',
      //         opacity: const AlwaysStoppedAnimation(.5),
      //         fit: BoxFit.fill,
      //         // color: Colors.white.withOpacity(0.100),
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           // const Icon(Icons.restaurant),
      //           Text(
      //             widget.categories.name,
      //             style: GoogleFonts.markaziText(
      //                 fontSize: 40, fontWeight: FontWeight.bold, color: const Color(0xFF162f11)),
      //           )
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
