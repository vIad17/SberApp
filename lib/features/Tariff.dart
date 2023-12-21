import 'package:flutter/material.dart';
import 'package:SberApp/widgets/TariffCard.dart';

class Tariff extends StatelessWidget {
  const Tariff({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TariffCard(
          icon: Icon(Icons.speed, size: 35, color: Theme.of(context).primaryColor,),
          title: 'Изменить суточный лимит',
          isBottomDivided: true,
          description: 'На платежи и переводы',
        ),
        TariffCard(
          icon: Icon(Icons.percent, size: 35, color: Theme.of(context).primaryColor,),
          title: 'Переводы без комиссии',
          isBottomDivided: true,
          description: 'Показать остаток в этом месяце',
        ),
        TariffCard(
          icon:  Icon(Icons.sync_alt_rounded, size: 35, color: Theme.of(context).primaryColor,),
          title: 'Информация о тарифах и лимитах',
          isBottomDivided: false
        ),
      ],
    );
  }
}
