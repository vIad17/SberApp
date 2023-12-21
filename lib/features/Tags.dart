import 'package:flutter/material.dart';
import 'package:mdlab3/widgets/Tag.dart';

class Tags extends StatelessWidget {
  final List<String> tags;

  const Tags({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        direction: Axis.horizontal,
        children: [
          if (tags.isNotEmpty) Tag(name: tags.first),
          for(int i = 1; i < tags.length; ++i) Tag(name: tags[i]),
        ],
      ),
    );
  }
}
