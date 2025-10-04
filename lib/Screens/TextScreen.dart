import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  final TextStyle baseStyle = const TextStyle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Виджет')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Этот текст выравнивается по правому краю',
                textAlign: TextAlign.right,
                style: baseStyle.copyWith(
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Этот обычный текст с базовым стилем, выравнивание по левому краю',
              textAlign: TextAlign.left,
              style: baseStyle
            ),
            SizedBox(height: 12),
            Text(
              'У этого текста есть тень',
              textAlign: TextAlign.center,
              style: baseStyle.copyWith(
                fontSize: 16.0,
                color: Colors.blueGrey,
                shadows: [
                  Shadow(
                    color: Colors.black45,
                    offset: Offset(1.5, 1.5),
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}