import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String dicepath = 'images/dice-2.png';

  Color _textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          dicepath,
          width: 200,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              dicepath = 'images/dice-${randomNumber()}.png';
              _textColor = _getRandomColor();
            });
          },
          style: TextButton.styleFrom(
              backgroundColor: Colors.grey.shade100,
              foregroundColor: _textColor,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: Text("Roll Dice"),
        )
      ],
    );
  }
}

int randomNumber() {
  Random random = Random();
  return random.nextInt(5) + 1;
}

Color _getRandomColor() {
  Random random = Random();
  return Color.fromRGBO(
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
    1,
  );
}
