import 'package:flutter/material.dart';
import 'package:quizapp/core/const/question_list.dart';
import 'package:quizapp/feature/dashboard/widgets/progressbar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  /// Random renk seçmek için kullanılan fonksiyon.
  /// [index] parametresi ile kaçıncı eleman olduğunu alır.,
  /// [colors] listesindeki renklerden birini seçer.
  /// [index % colors.length] ile renklerin tekrar etmesini sağlar.
  Color _generateColor(int index) {
    List<Color> colors = [
      const Color.fromRGBO(255, 113, 91, 1),
      const Color.fromRGBO(52, 209, 191, 1),
      const Color.fromRGBO(4, 150, 255, 1),
      const Color.fromRGBO(102, 101, 221, 1),
      const Color.fromRGBO(222, 13, 146, 1),
      const Color.fromRGBO(4, 231, 98, 1),
    ];
    return colors[index % colors.length];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: dersler.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: LinearProgressBar(
                color: _generateColor(index),
                dersler: dersler[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
