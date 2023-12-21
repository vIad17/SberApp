import 'package:flutter/material.dart';
import 'package:SberApp/features/Header.dart';

class AppLayout extends StatelessWidget {
  final Widget child;
  final List<String> titles;

  const AppLayout({super.key, required  this.child, required this.titles});

  @override
  Widget build(BuildContext context) =>  DefaultTabController(
    length: 2,
    child: Scaffold (
      backgroundColor: Theme.of(context).colorScheme.background,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            elevation: 5,
            shadowColor: Colors.black,
            surfaceTintColor: Colors.white,
            toolbarHeight: 240,
            centerTitle: true,
            title: const Column(
              children: [
                Header(profilePhoto: 'assets/images/profile_photo.png'),
                Text(
                  "Екатерина",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800
                  ),
                ),
              ],
            ),
            pinned: true,
            floating: true,
            snap: false,
            bottom:  TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Theme.of(context).primaryColor,
              labelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              tabs: [
                  for (var tabText in titles)
                    Tab(text: tabText)
              ],
            ),
          )
        ],
        body: child
      ),
    ),
  );
}

