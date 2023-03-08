import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeveloperCard extends StatefulWidget {
  const DeveloperCard({
    super.key,
    required this.textName,
  });
  final String textName;

  @override
  State<DeveloperCard> createState() => _DeveloperCardState();
}

class _DeveloperCardState extends State<DeveloperCard> {
  // final String linkedIn;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 18, top: 16),
      height: 100,
      width: 120,
      decoration: BoxDecoration(
        color: const Color(0xffaab9a9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.network(
              'https://static.thenounproject.com/png/3497808-200.png',
              height: 45,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            widget.textName,
            style: GoogleFonts.markaziText(fontSize: 20, color: const Color(0xFF162f11)),
          ),
          const SizedBox(
            height: 14,
          ),
          // Text(
          //   linkedIn,
          //   style: TextStyle(fontSize: 18),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 8.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Image.network(
          //         'https://cdn-icons-png.flaticon.com/512/25/25231.png',
          //         height: 25,
          //       ),
          //       const SizedBox(
          //         width: 10,
          //       ),
          //       Image.network(
          //         'https://www.edigitalagency.com.au/wp-content/uploads/new-linkedin-logo-white-black-png.png',
          //         height: 25,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
