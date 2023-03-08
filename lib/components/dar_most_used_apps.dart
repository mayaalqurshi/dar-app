import 'package:flutter/material.dart';

import '../model/mAppUsed.dart';

class MostUsedApps extends StatelessWidget {
  const MostUsedApps({
    Key? key,
    required this.mAppUsed,
  }) : super(key: key);
  final MAppUsed mAppUsed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.hardEdge,
        child: Image.network(mAppUsed.image,
            // 'https://play-lh.googleusercontent.com/MWadEoaHru4kzqyGIxnkftmdvwa-Np4LKRb3zf2PEiyo7ByXAGoGJG0Sa2EdFPlnnVLf',
            fit: BoxFit.fill),
      ),
    );
  }
}
