import 'package:flutter/material.dart';

import '../../components/app_card.dart';
import '../../model/section_model.dart';

class SectionPage extends StatefulWidget {
  const SectionPage({
    super.key,
    required this.catId,
  });
  final Category catId;

  @override
  State<SectionPage> createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/img/darlogo.jpg',
          width: 160,
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                // Text(
                //   'تطبيقات التوصيل',
                //   style: GoogleFonts.markaziText(fontSize: 20),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                for (final section in Section.sections) ...[
                  if (section.cat_id == widget.catId.id)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppCard(
                        sectionInfo: section,
                      ),
                    ),
                ],
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xfffbf9f2),
    );
  }
}
