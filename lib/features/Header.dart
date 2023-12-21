import 'dart:io';

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String profilePhoto;

  const Header({super.key, required this.profilePhoto});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.close, color: Theme.of(context).primaryColor,),
                  onPressed: () {exit(0);},
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(Icons.logout, color: Theme.of(context).primaryColor,),
                  onPressed: () {},
                ),
              ]
            ),
            Image.asset(
              profilePhoto,
              width: 140.0,
              height: 140.0,
            ),
        ],
    );
  }
}