import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  const PaddingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Padding вокруг всего текста.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: const [
                Icon(Icons.label, color: Colors.blue),
                SizedBox(width: 8),
                Text('Padding cо смещением вправо'),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Text('Padding с отдалением.'),
          ),
        ],
      ),
    );
  }
}