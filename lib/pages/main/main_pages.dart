import 'package:flutter/material.dart';

import 'bar_item_page.dart';
import 'home_page.dart';
import 'my_page.dart';
import 'search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List pages = const [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.apps_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined), label: 'Bar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: 'Serch'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'My'),
        ],
      ),
    );
  }
}
