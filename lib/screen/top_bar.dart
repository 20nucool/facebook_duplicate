import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  'facebook',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 219, 219, 219),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 219, 219, 219),
                  child: Icon(
                    Icons.message_rounded,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          // BottomNavigationBar(
          //   elevation: 1,
          //   iconSize: 25,
          //   showSelectedLabels: false,
          //   //  selectedLabelStyle:,

          //   selectedIconTheme: const IconThemeData(
          //     size: 35.0,
          //   ),
          //   showUnselectedLabels: false,
          //   type: BottomNavigationBarType.fixed,
          //   items: const [
          //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.people_alt_rounded), label: 'Profile'),
          //     BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Watch'),
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.shopping_cart), label: 'Shop'),
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.notifications), label: 'Notification'),
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.list_outlined), label: 'Dashboard'),
          //   ],
          // ),
        ],
      ),
    );
  }
}
