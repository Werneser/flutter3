import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  const PaddingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Demo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Простой паддинг вокруг текста
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Паддинг вокруг всего вокруг текста.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          // Горизонтальный паддинг слева
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: const [
                Icon(Icons.label, color: Colors.blue),
                SizedBox(width: 8),
                Text('Смещено вправо'),
              ],
            ),
          ),
          // Паддинг внутри контейнера
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
            child: Container(
              color: Colors.amberAccent,
              padding: const EdgeInsets.all(12.0),
              child: const Text('Контент внутри контейнера с паддингом'),
            ),
          ),
          // Небольшие промежутки
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
            child: Text('Дополнительные примеры паддинга для обучения.'),
          ),
        ],
      ),
    );
  }
}