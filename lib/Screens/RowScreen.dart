import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.favorite, color: Colors.pink),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Это пример строки с несколькими элементами внутри. Текст может занимать доступное пространство.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ElevatedButton(onPressed: null, child: Text('Btn 1')),
                ElevatedButton(onPressed: null, child: Text('Btn 2')),
                ElevatedButton(onPressed: null, child: Text('Btn 3')),
                Text(
                  'В этой строке для примера размещено несколько кнопок',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    'Расширяемая зона с текстом, чтобы увидеть поведение Row с Expanded.',
                    style: TextStyle(fontSize: 14),

                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 28),
              ],
            ),
          ],
        ),
      ),
    );
  }
}