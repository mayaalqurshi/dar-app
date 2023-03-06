import 'package:dar/components/dar_drawer.dart';
import 'package:dar/components/dar_floating_button.dart';
import 'package:dar/components/dar_main_title.dart';
import 'package:dar/pages/other_services_pages/add_translator_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchForTranslators extends StatefulWidget {
  const SearchForTranslators({super.key});

  @override
  State<SearchForTranslators> createState() => _SearchForTranslatorsState();
}

class _SearchForTranslatorsState extends State<SearchForTranslators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const DarDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: DarMainTitle(
              MainTitle: 'المترجمين',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 600,
            // height: 600,
            child: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffC3C1BE),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      width: 600,
                      height: 664,
                    ),
                  ],
                ),
                Positioned(
                  top: 10,
                  right: 30,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: 360,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Color(0xffACB9AA),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              width: 240,
                              height: 120,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    ':الاسم',
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    ':المدينة',
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
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
                            ),
                            const Icon(
                              Icons.person_outlined,
                              size: 80,
                            )
                          ],
                        ),
                        Text(
                          ':رقم الجوال',
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
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
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: DarFloatingButton(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTranslator(),
            ),
          );
        },
      ),
    );
  }
}
