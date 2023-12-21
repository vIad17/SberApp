import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const TitleWidget({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800)
        ),
        Text(
          subTitle,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
      ],
    );
  }
}