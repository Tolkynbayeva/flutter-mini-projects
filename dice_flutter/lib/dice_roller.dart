import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/img/dice-$currentDiceRoll.png',
          width: 200.0,
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20.0),
            foregroundColor: Colors.white,
          ),
          onPressed: rollDice,
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              fontSize: 28.0,
            ),
          ),
        )
      ],
    );
  }
}
