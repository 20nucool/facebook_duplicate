import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  // final double expandedHeight;
//
  // MyAppBar({required this.expandedHeight});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 1,
      iconSize: 25,
      showSelectedLabels: false,
      //  selectedLabelStyle:,

      selectedIconTheme: const IconThemeData(
        size: 35.0,
      ),
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded), label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Watch'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Shop'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notification'),
        BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined), label: 'Dashboard'),
      ],
    );
  }
}
