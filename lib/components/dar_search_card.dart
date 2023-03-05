import 'package:flutter/material.dart';

class DarSearchCard extends StatelessWidget {
  const DarSearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 360,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const Text(
            'مالذي تبحث عنه ؟ ',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            decoration:
                BoxDecoration(color: const Color(0xFF959595), borderRadius: BorderRadiusDirectional.circular(20)),
            width: 300,
            height: 40,
            child: const Center(
              child: TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  hintText: 'ابحث',
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
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
              backgroundColor: const Color(0xFF959595),
              textStyle: const TextStyle(fontSize: 20),
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
