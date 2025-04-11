class QuizQuestion {
  QuizQuestion({required this.text, required this.answer});

  final String text;
  final List<String> answer;

  List<String> getShuffledList() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }

}
