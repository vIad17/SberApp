import 'package:flutter/material.dart';
import 'package:mdlab3/entities/ServiceEntity.dart';
import 'package:mdlab3/widgets/Service.dart';

class Services extends StatelessWidget {
  final List<ServiceEntity> services;

  const Services({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          if (services.isNotEmpty) Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Service(data: services.first),
          ),
          for (int i = 1; i < services.length; ++i) Padding(
            padding: const EdgeInsets.only(left: 10, top: 15, bottom: 15),
            child: Service(data: services[i]),
          ),
        ],
      ),
    );
  }
}
