import 'package:flutter/material.dart';
import 'package:dice_flutter/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientCotainer(
          colors: [
            Color.fromARGB(255, 19, 10, 33),
            Color.fromARGB(255, 145, 115, 193),
          ],
        ),
      ),
    ),
  );
}
