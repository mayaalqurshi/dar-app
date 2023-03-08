import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/section_model.dart';

class AppCard extends StatefulWidget {
  const AppCard({
    super.key,
    required this.sectionInfo,
  });
  final Section sectionInfo;
  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  var _url = Uri.parse('https://goo.gl/maps/uuBj5RCrkZBETvTu8');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 360,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 202, 211, 201),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 360,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Image.network(
              widget.sectionInfo.image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: 50,
            width: 360,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(63, 70, 63, 1),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      _url = Uri.parse(
                        widget.sectionInfo.url,
                      );
                      _launchUrl();
                    },
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/376/376109.png',
                      height: 30,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    widget.sectionInfo.name,
                    style: GoogleFonts.markaziText(fontSize: 26, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
