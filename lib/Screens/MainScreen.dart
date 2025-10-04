import 'package:flutter/material.dart';

import 'ButtonScreen.dart';
import 'ContainerScreen.dart';
import 'PaddingScreen.dart';
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
    //RowScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Content Switcher')),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green ,
        unselectedItemColor: Colors.amber,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: 'Text'),
          BottomNavigationBarItem(icon: Icon(Icons.touch_app), label: 'Layout'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Buttons'),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Card'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Stateful'),
        ],
      ),
    );
  }
}




// 2) Секция 2: Layout (Column/Row)
class SectionLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Заголовок секции Layout', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text('Элемент 1')),
              Expanded(child: Text('Элемент 2')),
              Expanded(child: Text('Элемент 3')),
            ],
          ),
          SizedBox(height: 16),
          Text('Дополнительная информация в колонке ниже.'),
        ],
      ),
    );
  }
}

// 3) Секция 3: Buttons
class SectionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Кнопка 1')),
          SizedBox(height: 12),
          ElevatedButton(onPressed: () {}, child: Text('Кнопка 2')),
        ],
      ),
    );
  }
}

// 4) Секция 4: Card/Container с Padding
class SectionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blueAccent),
          ),
          child: Text('Секция с Card/Container и Padding', style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}

// 5) Секция 5: Stateful пример
class SectionStateful extends StatefulWidget {
  @override
  _SectionStatefulState createState() => _SectionStatefulState();
}

class _SectionStatefulState extends State<SectionStateful> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Состояние внутри секции: $_counter', style: TextStyle(fontSize: 20)),
          SizedBox(height: 12),
          ElevatedButton(onPressed: _increment, child: Text('Увеличить счётчик')),
        ],
      ),
    );
  }
}