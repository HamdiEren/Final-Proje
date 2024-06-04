import 'package:flutter/material.dart';
import 'package:quizapp/feature/dashboard/dashboard_screen.dart';
import 'package:quizapp/feature/favorite/favorite_screen.dart';
import 'package:quizapp/feature/home/widgets/home_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /// AppBar widget'ı ile uygulamanın üst kısmında bir başlık oluşturulur.
        appBar: AppBar(
          centerTitle: true,
          actions: const [AppBarAction()],
        ),

        /// Yan bar olarak çağırıyoruz.
        drawer: const HomeDrawer(),
        body: const DashboardScreen());
  }
}

class AppBarAction extends StatelessWidget {
  const AppBarAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: IconButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.grey[200]),
        ),
        icon: const Icon(Icons.favorite_border),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FavoriteScreen()),
          );
        },
      ),
    );
  }
}
