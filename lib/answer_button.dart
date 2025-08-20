import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.answerText, this.onTap, {super.key});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 53, 22, 163),
        foregroundColor: Colors.white,
      ),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
