import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['correct_answer'] == itemData['user_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:  8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            questionIndex: itemData['question_index'] as int,
            isCorrectAnswer: isCorrectAnswer,
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  itemData['user_answer'] as String,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 220, 56, 190),
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
