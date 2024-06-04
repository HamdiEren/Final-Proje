import 'package:flutter/material.dart';
import 'package:quizapp/core/const/model.dart';
import 'package:quizapp/core/const/question_list.dart';

class HomeProvider extends ChangeNotifier {
  /// Favorilere eklemek için kullanılır.
  final List<Dersler> _favorites = [];
  List<Dersler> get favorites => _favorites;
  void toggleFavorite(Dersler ders) {
    if (_favorites.contains(ders)) {
      _favorites.remove(ders);
    } else {
      _favorites.add(ders);
    }
    notifyListeners();
  }

  bool isFavorite(Dersler ders) {
    return _favorites.contains(ders);
  }

  /// Testin çözüldüğünü işaretlemek için kullanılır.
  final List<Dersler> _derslerListesi = dersler;
  List<Dersler> get derslerListesi => _derslerListesi;
  void markTestAsSolved(int dersIndex, int testIndex) {
    _derslerListesi[dersIndex].test[testIndex].isSolved = true;
    notifyListeners();
  }

  /// Çözülen testlerin yüzdesini hesaplamak için kullanılır.
  int totalTests = 0;
  int solvedTests = 0;
  double? calculateSolvedPercentage(Dersler dersler) {
    totalTests = 0;
    solvedTests = 0;
    for (var test in dersler.test) {
      totalTests++;
      if (test.isSolved) {
        solvedTests++;
      }
    }
    if (totalTests > 0) {
      return (solvedTests / totalTests) * 100;
    } else {
      return null;
    }
  }
}
