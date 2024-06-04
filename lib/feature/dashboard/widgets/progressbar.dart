import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/core/const/model.dart';
import 'package:quizapp/feature/home/home_provider.dart';

class LinearProgressBar extends StatelessWidget {
  final Color? color;
  final Dersler dersler;
  const LinearProgressBar(
      {super.key, required this.color, required this.dersler});

  @override
  Widget build(BuildContext context) {
    /// Derslerin çözülen testlerinin yüzdelik dilimini hesaplar.
    /// [lessonProvider] ile [HomeProvider] sınıfından veri alır.
    /// [calculateSolvedPercentage] fonksiyonu ile çözülen testlerin yüzdelik dilimini hesaplar.
    /// [subject] parametresi ile dersi alır.
    final lessonProvider = Provider.of<HomeProvider>(context);
    double? solvedPercentage =
        lessonProvider.calculateSolvedPercentage(dersler);

    return Container(
      decoration: BoxDecoration(
        color: color?.withOpacity(0.4),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 100,
      width: double.infinity,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: color?.withOpacity(0.2),
              radius: 20,
              child: Icon(
                Icons.history_edu,
                color: color,
                size: 30,
              ),
            ),
            title: Text(dersler.dersAdi),
            subtitle: Text(
                '${lessonProvider.solvedTests}/${lessonProvider.totalTests}'),
            trailing: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color!.withOpacity(0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(solvedPercentage != null
                    ? '${solvedPercentage.toStringAsFixed(0)}%'
                    : '0%'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 72),

            /// Çözülen testlerin yüzdelik dilimini gösteren progress bar.
            /// [LinearProgressIndicator] ile progress bar oluşturulur.

            child: LinearProgressIndicator(
              minHeight: 10,
              borderRadius: BorderRadius.circular(15),
              value: solvedPercentage != null ? solvedPercentage / 100 : 0,
              backgroundColor: color?.withOpacity(0.2),
              valueColor: AlwaysStoppedAnimation<Color>(color!),
            ),
          ),
        ],
      ),
    );
  }
}
