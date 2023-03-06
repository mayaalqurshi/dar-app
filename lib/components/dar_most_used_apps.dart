import 'package:flutter/material.dart';

class MostUsedApps extends StatelessWidget {
  const MostUsedApps({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
                'https://play-lh.googleusercontent.com/MWadEoaHru4kzqyGIxnkftmdvwa-Np4LKRb3zf2PEiyo7ByXAGoGJG0Sa2EdFPlnnVLf',
                fit: BoxFit.contain),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
                'https://play-lh.googleusercontent.com/x8n-yOMt1bLCCUBAYo7YHMDFHfu9LK5HiGINH8M8IUaxFKeU0N8rlQOs8R8sfwv4KttU',
                fit: BoxFit.contain),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
                'https://play-lh.googleusercontent.com/vo3LYx5f9xGcGD_23tnXYLtbShsTveRpKslOiB14QOu95I9A2OkB2wTB_ORd2-RB1E4',
                fit: BoxFit.contain),
          )
        ],
      ),
    );
  }
}
