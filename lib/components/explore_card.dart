import 'package:dar/pages/sections_pages/all_sections_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(16),
      height: 180,
      width: 360,
      decoration: BoxDecoration(
        color: const Color(0xfffbf9f2),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 7,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'استكشف المنطقة',
            style: GoogleFonts.markaziText(fontSize: 30, color: const Color(0xFF162f11)),
          ),
          const SizedBox(
            height: 18,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AllSectionsPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color(0xFFFFFFFF),
              minimumSize: const Size(220, 40),
              backgroundColor: const Color(0xFF162f11),
              textStyle: GoogleFonts.markaziText(fontSize: 20),
            ),
            child: const Text(
              'استكشف',
            ),
          ),
        ],
      ),
    );
  }
}
