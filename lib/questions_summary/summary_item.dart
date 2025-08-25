import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary/question_indentifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIndentifier(
          questionIndex: itemData['question_index'] as int,
          isCorrectAnswer: isCorrectAnswer,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              SizedBox(height: 5),
              Text(
                itemData['user_answer'] as String,
                style: TextStyle(
                  color: const Color.fromARGB(255, 207, 171, 252),
                ),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: TextStyle(
                  color: const Color.fromARGB(255, 181, 254, 146),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
