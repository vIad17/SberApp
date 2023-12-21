import 'package:flutter/material.dart';

class TariffCard extends StatelessWidget {
  final bool isBottomDivided;
  final Icon icon;
  final String title;
  final String? description;


  const TariffCard({super.key, required this.icon, required this.title, required this.isBottomDivided, this.description});

  @override
  Widget build(BuildContext context) {
    return  Column (
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: icon,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  if (description != null) Text(
                    description??'',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              )
            ],
          ),
        ),
        if (isBottomDivided)  Padding(
          padding: EdgeInsets.only(left: 21.0 + (icon.size ?? 0)),
          child: const Divider(),
        )
      ],
    );
  }
}