class QuizQuestions {
  const QuizQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getsuffledanswers() {
    final List<String> suffled = List.of(answers);
    suffled.shuffle();
    return suffled;
  }
}
