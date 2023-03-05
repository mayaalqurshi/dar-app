import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({super.key, required this.stitle, required this.text1, required this.text2});
  final String stitle;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 360,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xffD9D9D9)),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              // alignment:
              height: 30,
              width: 80,
              decoration: const BoxDecoration(color: Color.fromARGB(255, 141, 156, 169)),
              child: Row(
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Text(text1),
                  ))
                ],
              ),
            ),
            Container(
              // alignment:
              height: 30,
              width: 80,
              decoration: const BoxDecoration(color: Color.fromARGB(255, 166, 185, 201)),
              child: Row(
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Text(text2),
                  ))
                ],
              ),
            ),
            // const SizedBox(
            //   width: 100,
            // ),
            const Spacer(),
            Text(
              stitle,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
