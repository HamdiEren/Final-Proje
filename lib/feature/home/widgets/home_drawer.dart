import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/feature/lesson/lesson_screen.dart';
import 'package:quizapp/core/const/question_list.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepPurple,
                    Colors.deepPurpleAccent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Text(
                  'Quiz App',
                  style: GoogleFonts.pacifico(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              )),
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
            ),

            /// ExpansionTile Açlıp kapanabilen bir widget'tır.
            /// Dropdown menü gibi kullanılabilir.
            child: ExpansionTile(
              leading: const Icon(Icons.book),
              title: const Text('Dersler'),
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dersler.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(dersler[index].dersAdi),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ClassSelectionScreen(
                                secilenders: dersler[index], dersIndex: index),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
