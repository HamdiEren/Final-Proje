class Dersler {
  String dersAdi;
  List<Test> test;

  Dersler({required this.dersAdi, required this.test});
}

class Test {
  bool isSolved;
  String testName;
  List<Question> questions;

  Test(
      {required this.testName,
      required this.questions,
      required this.isSolved});
}

class Question {
  String questionText;
  List<Answer> answers;

  Question({required this.questionText, required this.answers});
}

class Answer {
  String text;
  bool isCorrect;

  Answer({required this.text, required this.isCorrect});
}
