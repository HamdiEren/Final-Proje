import 'package:quizapp/core/const/model.dart';

List<Dersler> dersler = [
  Dersler(dersAdi: "Matematik", test: [
    Test(isSolved: false, testName: "Cebir", questions: [
      Question(questionText: "x + 2 = 5 denkleminin çözümü nedir ?", answers: [
        Answer(text: "1", isCorrect: false),
        Answer(text: "2", isCorrect: false),
        Answer(text: "3", isCorrect: true),
        Answer(text: "4", isCorrect: false),
      ]),
      Question(questionText: "2x - 3 = 7 denkleminin çözümü nedir ?", answers: [
        Answer(text: "5", isCorrect: true),
        Answer(text: "6", isCorrect: false),
        Answer(text: "4", isCorrect: false),
        Answer(text: "7", isCorrect: false),
      ]),
      Question(questionText: "3x + 4 = 13 denkleminin çözümü nedir?", answers: [
        Answer(text: "2", isCorrect: true),
        Answer(text: "3", isCorrect: false),
        Answer(text: "4", isCorrect: false),
        Answer(text: "5", isCorrect: false),
      ])
    ]),
    Test(isSolved: false, testName: "Geometri", questions: [
      Question(
          questionText: "Bir üçgenin iç açılarının toplamı kaç derecedir?",
          answers: [
            Answer(text: "90", isCorrect: false),
            Answer(text: "180", isCorrect: true),
            Answer(text: "270", isCorrect: false),
            Answer(text: "360", isCorrect: false),
          ]),
      Question(
          questionText: "Bir dikdörtgenin alanı nasıl hesaplanır ?",
          answers: [
            Answer(text: "Kısa Kenar x Uzun Kenar", isCorrect: true),
            Answer(text: "Kenar x Kenar", isCorrect: false),
            Answer(text: "Uzun Kenar x Uzun Kenar", isCorrect: false),
            Answer(text: "Kısa Kenar x Kısa Kenar", isCorrect: false),
          ]),
      Question(
          questionText: "Bir çemberin çevresi nasıl hesaplanır?",
          answers: [
            Answer(text: "πr^2", isCorrect: false),
            Answer(text: "2πr", isCorrect: true),
            Answer(text: "πd", isCorrect: false),
            Answer(text: "r^2", isCorrect: false),
          ]),
    ]),
    Test(isSolved: false, testName: "Olasılık ve İstatistik", questions: [
      Question(
          questionText:
              "Bir olayın olma olasılığı 0.2 ise, bu olayın olmama olasılığı nedir?",
          answers: [
            Answer(text: "0.8", isCorrect: true),
            Answer(text: "0.2", isCorrect: false),
            Answer(text: "0.5", isCorrect: false),
            Answer(text: "1.0", isCorrect: false),
          ]),
      Question(
          questionText: "Bir zarın atılmasında 3 gelme olasılığı nedir?",
          answers: [
            Answer(text: "1/6", isCorrect: true),
            Answer(text: "1/3", isCorrect: false),
            Answer(text: "1/2", isCorrect: false),
            Answer(text: "1/4", isCorrect: false),
          ]),
      Question(
          questionText: "Bir olayın kesin olma olasılığı nedir ?",
          answers: [
            Answer(text: "0", isCorrect: false),
            Answer(text: "0.5", isCorrect: false),
            Answer(text: "0.75", isCorrect: false),
            Answer(text: "1", isCorrect: true),
          ]),
    ])
  ]),
  Dersler(dersAdi: "Coğrafya", test: [
    Test(isSolved: false, testName: "Yerküre ve Haritalar", questions: [
      Question(
          questionText: "Dünya’nın en büyük okyanusu hangisidir ?",
          answers: [
            Answer(text: "Hint Okyanusu", isCorrect: false),
            Answer(text: "Atlas Okyanusu", isCorrect: false),
            Answer(text: "Pasifik Okyanusu", isCorrect: true),
            Answer(text: "Arktik Okyanusu", isCorrect: false),
          ]),
      Question(
          questionText: "Hangi kıta tamamen Güney Yarımküre’dedir ?",
          answers: [
            Answer(text: "Asya", isCorrect: false),
            Answer(text: "Avrupa", isCorrect: false),
            Answer(text: "Afrika", isCorrect: false),
            Answer(text: "Avustralya", isCorrect: true),
          ]),
      Question(
          questionText: "Ekvator, hangi iki noktayı birbirine bağlar ?",
          answers: [
            Answer(text: "Kuzey Kutbu ve Güney Kutbu", isCorrect: true),
            Answer(text: "Doğu ve Batı", isCorrect: false),
            Answer(text: "Batı ve Güney", isCorrect: false),
            Answer(text: "Doğu ve Güney", isCorrect: false),
          ]),
    ]),

    Test(isSolved: false, testName: "İklim Bilgisi", questions: [
      Question(questionText: "Hangi iklim tipi sürekli yağış alır?", answers: [
        Answer(text: "Muson", isCorrect: false),
        Answer(text: "Ekvatoral", isCorrect: true),
        Answer(text: "Karasal", isCorrect: false),
        Answer(text: "Akdeniz", isCorrect: false),
      ]),
      Question(questionText: "Hangi iklim kuşağında çöl bulunur?", answers: [
        Answer(text: "Tropikal", isCorrect: false),
        Answer(text: "Subtropikal", isCorrect: true),
        Answer(text: "Ilıman", isCorrect: false),
        Answer(text: "Kutup", isCorrect: false),
      ]),
      Question(
          questionText: "Hangi iklim tipi Akdeniz Bölgesi’nde görülür?",
          answers: [
            Answer(text: "Karasal", isCorrect: false),
            Answer(text: "Muson", isCorrect: false),
            Answer(text: "Akdeniz", isCorrect: true),
            Answer(text: "Ekvatoral", isCorrect: false),
          ]),
    ])

    // Diğer sınıflar ve testler buraya eklenebilir
  ]),
  Dersler(dersAdi: "Biyoloji", test: [
    Test(isSolved: false, testName: "Hücre Bilgisi", questions: [
      Question(
          questionText:
              "Hücrede enerji üretiminden sorumlu organel hangisidir?",
          answers: [
            Answer(text: "Mitokondri", isCorrect: true),
            Answer(text: "Ribozom", isCorrect: false),
            Answer(text: "Lizozom", isCorrect: false),
            Answer(text: "Golgi Cismi", isCorrect: false),
          ]),
      Question(
          questionText:
              "Bitki hücrelerinde bulunup hayvan hücrelerinde bulunmayan yapı nedir?",
          answers: [
            Answer(text: "Hücre duvarı", isCorrect: true),
            Answer(text: "Ribozom", isCorrect: false),
            Answer(text: "Mitokondri", isCorrect: false),
            Answer(text: "Lizozom", isCorrect: false),
          ]),
      Question(
          questionText: "Protein sentezinde görev alan organel hangisidir ?",
          answers: [
            Answer(text: "Mitokondri", isCorrect: false),
            Answer(text: "Ribozom", isCorrect: true),
            Answer(text: "Lizozom", isCorrect: false),
            Answer(text: "Golgi Cismi", isCorrect: false),
          ]),
    ]),
    Test(isSolved: false, testName: "Genetik ve Evrim", questions: [
      Question(questionText: "Genetik biliminin kurucusu kimdir?", answers: [
        Answer(text: "Darwin", isCorrect: false),
        Answer(text: "Mendel", isCorrect: true),
        Answer(text: "Watson", isCorrect: false),
        Answer(text: "Crick", isCorrect: false),
      ]),
      Question(
          questionText: "DNA’nın çift sarmal modelini kimler bulmuştur?",
          answers: [
            Answer(text: "Mendel ve Crick", isCorrect: false),
            Answer(text: "Watson ve Crick", isCorrect: true),
            Answer(text: "Darwin ve Watson", isCorrect: false),
            Answer(text: "Mendel ve Watson", isCorrect: false),
          ]),
      Question(questionText: "Evrim teorisini kim ortaya atmıştır?", answers: [
        Answer(text: "Mendel", isCorrect: false),
        Answer(text: "Watson", isCorrect: false),
        Answer(text: "Crick", isCorrect: false),
        Answer(text: "Darwin", isCorrect: true),
      ]),
    ]),
    // Diğer sınıflar ve testler buraya eklenebilir
  ]),

  // Diğer dersler buraya eklenebilir
];
