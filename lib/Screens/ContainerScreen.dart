import 'package:flutter/material.dart';
import 'dart:math';

class ContainerScreen extends StatelessWidget {

  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double size = 120.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: const Text(
                'Простой контейнер',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: size,
              height: size,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.indigo],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Контейнер с градиентом',
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: size,
              height: size,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent, width: 2),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: const Text(
                'Контейнер с границами',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}