import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/feature/auth/auth_provider.dart';
import 'package:quizapp/feature/auth/login_page.dart';
import 'package:quizapp/feature/home/home_provider.dart';

/// Uygulamanın başlangıç noktasıdır.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Multiprovider ile birden fazla provider'ı aynı anda kullanabiliriz.
    /// State yönetimini çağırıp kullanmak için ChangeNotifierProvider kullanılır.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],

      /// MaterialApp widget'ı içerisinde uygulamamızın temel özelliklerini belirleriz.
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        /// Uygulamanın başlangıç ekranını belirleriz.
        home: const LoginPage(),
      ),
    );
  }
}
