import 'package:flutter/material.dart';
import 'package:SberApp/entities/ServiceEntity.dart';
import 'package:SberApp/features/Services.dart';
import 'package:SberApp/features/Tags.dart';
import 'package:SberApp/features/Tariff.dart';
import 'package:SberApp/widgets/TitleWidget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 20),
      children: [
        const SizedBox(height: 30),
        const TitleWidget(
          title: 'У вас подключено',
          subTitle: 'Подписки, автоплатежи и сервисы на которые вы подписались',
        ),
        const SizedBox(height: 15,),
        Services(services: [
            ServiceEntity('СберПрайм', 'assets/images/sber_logo.png', 'Платёж 9 июля', 199),
            ServiceEntity('Переводы', 'assets/images/sber_chetko.png', 'Автопродление 21 августа', 199)
          ]
        ),
        const SizedBox(height: 30),
        const TitleWidget(
          title: 'Тарифы и лимиты',
          subTitle: 'Для операций в Сбербанк Онлайн',
        ),
        const SizedBox(height: 15,),
        const Tariff(),
        const SizedBox(height: 30),
        const TitleWidget(
          title: 'Интересы',
          subTitle: 'Мы подбираем истории и предложения по темам, которые вам нравятся',
        ),
        const Tags(tags: ['Еда', 'Саморазвитие', 'Технологии', 'Дом', 'Досуг', 'Забота о себе', 'Наука'])
      ],
    );
  }
}
