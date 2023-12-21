import 'package:flutter/material.dart';
import 'package:mdlab3/entities/ServiceEntity.dart';

class Service extends StatelessWidget {
  final ServiceEntity data;

  const Service({super.key, required this.data});
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          fixedSize: const Size(250, 150),
          surfaceTintColor: Colors.white,
          elevation: 10,
          shadowColor: Colors.black.withAlpha(80),
          maximumSize: Size.copy(const Size(250, 150)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
        ),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withAlpha(20),
                    backgroundImage: AssetImage(data.serviceImgUrl),
                    radius: 20,
                  ),
                ),
                Text(
                  data.serviceName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  )
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.addInfo,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16
                  ),
                ),
                Text(
                  '${data.pricePerMonth} Р в месяц',
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}