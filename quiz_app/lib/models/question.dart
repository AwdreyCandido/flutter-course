class QuizQuestion {
  const QuizQuestion(this.title, this.answers);

  final String title;
  final List<String> answers;

  List<String> getShuffledValues() {
    // var shuffled = List<String>.from(answers);
    final copy = List.of(answers);
    copy.shuffle();
    return copy;
  }
}
