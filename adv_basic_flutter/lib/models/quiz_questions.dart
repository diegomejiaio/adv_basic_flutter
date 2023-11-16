class QuizQuestion {
  final String question;
  final List<String> answers;
  final int correctAnswer;

  QuizQuestion(
      {required this.question,
      required this.answers,
      required this.correctAnswer});

  // function that returns shuffled answers
  List<String> getShuffledAnswers() {
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
