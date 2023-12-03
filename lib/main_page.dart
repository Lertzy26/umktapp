import 'package:flutter/material.dart';
import 'package:uts/pages/home_page.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const HomePage(),
    const Center(
      child: Text(
        'Home',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
  const Center(
      child: Text(
        'Search',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          selectedItemColor: Colors.lightBlue,
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
          ]),
    );
  }
}
