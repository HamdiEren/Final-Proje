import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/feature/home/home_provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Favori derslerin listelendiği ekran.
    /// [favorites] ile favori dersler alınır.
    /// context.watch<HomeProvider>().favorites ile favori dersler alınır. Home Provider'dan bu listeli okuyorum (alıyorum)
    final favorites = context.watch<HomeProvider>().favorites;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Favoriler'),
        ),
        body: favorites.isEmpty
            ? const Center(
                child: Text('Henüz favori dersiniz yok.'),
              )
            : Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: favorites.length,
                  itemBuilder: (context, index) {
                    final ders = favorites[index];
                    return Card(
                      color: Colors.blue[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(ders.dersAdi,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          IconButton(
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 45,
                            ),

                            /// [toggleFavorite] ile favoriye ekler veya çıkarır.
                            onPressed: () {
                              context.read<HomeProvider>().toggleFavorite(ders);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ));
  }
}
