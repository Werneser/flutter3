import 'package:flutter/material.dart';

import 'ButtonScreen.dart';
import 'ContainerScreen.dart';
import 'PaddingScreen.dart';
import 'RowScreen.dart';
import 'TextScreen.dart';



class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    TextScreen(),
    ButtonScreen(),
    PaddingScreen(),
    ContainerScreen(),
    RowScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green ,
        unselectedItemColor: Colors.amber,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: 'Text'),
          BottomNavigationBarItem(icon: Icon(Icons.touch_app), label: 'Buttons'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Paddin'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Containers'),
          BottomNavigationBarItem(icon: Icon(Icons.ad_units_outlined), label: 'Row'),
        ],
      ),
    );
  }
}


