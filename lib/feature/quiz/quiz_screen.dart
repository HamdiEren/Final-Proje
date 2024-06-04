import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/core/const/model.dart';
import 'package:quizapp/feature/home/home_provider.dart';
import 'package:quizapp/feature/home/home_screen.dart';

class TestScreen extends StatefulWidget {
  final Test test;
  final int dersIndex;
  final int testIndex;

  const TestScreen(
      {super.key,
      required this.test,
      required this.dersIndex,
      required this.testIndex});

  @override
  // ignore: library_private_types_in_public_api
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  // Bu harita her soru için seçilen cevabı tutar
  Map<int, int?> selectedAnswers = {};

  // Bitirme butonuna basıldığında sonuçları kontrol eder
  void checkAnswers() {
    int correct = 0;
    int empty = 0;

    for (int i = 0; i < widget.test.questions.length; i++) {
      int? selectedAnswerIndex = selectedAnswers[i];
      if (selectedAnswerIndex == null) {
        empty++;
      } else if (widget
          .test.questions[i].answers[selectedAnswerIndex].isCorrect) {
        correct++;
      }
    }

    int incorrect = widget.test.questions.length - correct - empty;

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => AlertDialog(
        titleTextStyle:  const TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        title: const Text("Sonuçlar"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Doğru: $correct"),
            Text("Yanlış: $incorrect"),
            Text("Boş: $empty"),
          ],
        ),
        actions: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                  (Route<dynamic> route) => false);
            },
            child: const Text("Tamam", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.check),
            Text("Bitir"),
          ],
        ),
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(50)),
        backgroundColor: Colors.green.withOpacity(0.7),
        onPressed: () {
          Provider.of<HomeProvider>(context, listen: false)
              .markTestAsSolved(widget.dersIndex, widget.testIndex);
          checkAnswers();
        },
      ),
      appBar: AppBar(title: Text(widget.test.testName)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: widget.test.questions.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.test.questions[index].questionText,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  ...widget.test.questions[index].answers
                      .asMap()
                      .entries
                      .map((entry) {
                    int answerIndex = entry.key;
                    Answer answer = entry.value;
                    return RadioListTile<int>(
                      title: Text(answer.text),
                      value: answerIndex,
                      groupValue: selectedAnswers[index],
                      onChanged: (value) {
                        setState(() {
                          selectedAnswers[index] = value;
                        });
                      },
                    );
                  }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
