import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  final TextStyle baseStyle = const TextStyle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Экран с 3 Text')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Первый текст',
              style: baseStyle.copyWith(
                fontSize: 22.0,
                color: Colors.red,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            Text(
              'Второй текст',
              style: baseStyle.copyWith(
                fontSize: 28.0,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            Text(
              'Третий текст',
              style: baseStyle.copyWith(
                fontSize: 18.0,
                color: Colors.blueGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}