import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  int _counter = 0;

  void _increment(int delta) {
    setState(() {
      _counter += delta;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Screen')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => _increment(1),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue,
              ),
              child: Text('Первая кнопка (+1)'),
            ),
            SizedBox(height: 16),

            OutlinedButton(
              onPressed: () => _increment(2),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.deepPurple, side: BorderSide(color: Colors.deepPurple, width: 2),
              ),
              child: Text('Вторая кнопка (+2)'),
            ),
            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () => _increment(3),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.orange,
                elevation: 8.0,
                shadowColor: Colors.black54,
              ),
              child: Text('Третья кнопка (+3)'),
            ),
            SizedBox(height: 32),

            ElevatedButton(
              onPressed: _reset,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.grey, // текст
              ),
              child: Text('Сбросить счетчик'),
            ),
            SizedBox(height: 32),

            Text(
              'Счетчик: $_counter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}