import 'package:flutter/material.dart';
import 'dart:math';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = 120.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Container & Decoration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            // Простой контейнер с фоном
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
                'Box 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            // Контейнер с градиентом
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
              child: const Text('Gradient'),
            ),
            // Контейнер с трансформацией
            Transform.rotate(
              angle: 0.9,
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 6,
                      offset: Offset(3, 6),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: const Text('Rotated'),
              ),
            ),
            // Контейнер с границами и внутренним отступом
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
              child: const Text('Bordered'),
            ),
          ],
        ),
      ),
    );
  }
}