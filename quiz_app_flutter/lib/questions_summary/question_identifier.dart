import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrectAnswer,
  });
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 220, 56, 190)
            : Colors.blueAccent,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Center(
        child: Text(
          questionNumber.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
