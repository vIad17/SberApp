import 'package:flutter/material.dart';
import 'package:SberApp/layouts/layout/AppLayout.dart';
import 'package:SberApp/pages/ProfilePage.dart';
import 'package:SberApp/pages/SettingsPage.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(8, 166, 82, 1),
        useMaterial3: true,
      ),
      home: const AppLayout(
        titles: ["Профиль", "Настройки"],
        child: TabBarView (
          children: [
            ProfilePage(),
            SettingsPage(),
            ],
          ),
      ),
    );
  }
}