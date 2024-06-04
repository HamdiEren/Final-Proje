import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/core/const/model.dart';
import 'package:quizapp/feature/home/home_provider.dart';
import 'package:quizapp/feature/quiz/quiz_screen.dart';

class ClassSelectionScreen extends StatelessWidget {
  /// Seçilen dersin sınıflarını gösteren ekran.

  /// [secilenders] parametresi ile seçilen dersin sınıflarını alır.
  final Dersler secilenders;
  final int dersIndex;

  const ClassSelectionScreen(
      {super.key, required this.secilenders, required this.dersIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(secilenders.dersAdi),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.grey[200]),
              ),

              /// Ders favorilere eklenmiş mi kontrol edilir.,
              /// Eğer eklenmişse favori butonu kırmızı olur.
              /// Eğer eklenmemişse favori butonu boş olur.
              /// Butona tıklandığında ise favoriye ekler veya çıkarır.
              /// [toggleFavorite] fonksiyonu ile favoriye ekler veya çıkarır.
              /// [isFavorite] fonksiyonu ile favoriye eklenip eklenmediği kontrol edilir.
              /// context.watch<HomeProvider>().isFavorite(secilenders) ile favoriye eklenip eklenmediği kontrol edilir. Bunu Provider Paketi ile yapıyoruz
              icon: context.watch<HomeProvider>().isFavorite(secilenders)
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(Icons.favorite_border),
              onPressed: () {
                context.read<HomeProvider>().toggleFavorite(secilenders);
              },
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: secilenders.test.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.quiz, color: Colors.green),
                title: Text(secilenders.test[index].testName),
                onTap: () {
                  /// Test seçildiğinde testin olduğu sayfaya yönlendirir.
                  /// [TestScreen] sınıfına yönlendirir.
                  /// [test[index]] ile seçilen testi alır.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TestScreen(
                        test: secilenders.test[index],
                        dersIndex: dersIndex,
                        testIndex: index,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
