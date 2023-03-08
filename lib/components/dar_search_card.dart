import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarSearchCard extends StatelessWidget {
  const DarSearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return Container(
      height: 200,
      width: 360,
      decoration: BoxDecoration(
        color: const Color(0xffaab9a9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            'ما الذي تبحث عنه ؟ ',
            style: GoogleFonts.markaziText(fontSize: 30, color: const Color(0xFF162f11)),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            decoration:
                BoxDecoration(color: const Color(0xfffbf9f2), borderRadius: BorderRadiusDirectional.circular(20)),
            width: 300,
            height: 40,
            child: Center(
              child: TextField(
                controller: searchController,
                textAlign: TextAlign.end,
                cursorColor: const Color(0xFF162f11),
                decoration: InputDecoration(
                    hintText: 'ابحث',
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFF162f11),
                    ),
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.markaziText()),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color(0xFFFFFFFF),
              minimumSize: const Size(220, 40),
              backgroundColor: const Color(0xFF162f11),
              textStyle: GoogleFonts.markaziText(fontSize: 20),
            ),
            child: const Text(
              'ابحث',
            ),
          ),
        ],
      ),
    );
  }
}
