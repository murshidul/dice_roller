import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(const DiceRollerApp());
}

class DiceRollerApp extends StatelessWidget {
  const DiceRollerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradiantContainer(
          color1: Color.fromARGB(255, 208, 223, 6),
          color2: Color.fromARGB(255, 18, 171, 218),
        ),
      ),
    );
  }
}
