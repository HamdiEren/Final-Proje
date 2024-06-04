import 'package:flutter/material.dart';
import 'package:quizapp/feature/auth/model/user.dart';

class AuthProvider extends ChangeNotifier {
  /// Kullanıcı kayıt olurken kullanılacak metod.
  /// Eğer kayıt işlemi başarılı olursa true, başarısız olursa false döner.
  List<User> users = [
    User(email: '123@gmail.com', password: '123'),
    User(email: '1', password: '1')
  ];

  /// Kullanıcı giriş yaparken kullanılacak metod.
  /// Kullanıcı verilerini kontrol eder.
  /// Eğer giriş işlemi başarılı olursa true, başarısız olursa false döner.
  bool loginControl(String email, String password) {
    for (var user in users) {
      if (user.email == email && user.password == password) {
        return true;
      }
    }
    return false;
  }

  /// Kullanıcı kayıt olurken kullanılacak metod.
  /// Eğer kayıt işlemi başarılı olursa true
  bool register(String email, String password) {
    users.add(User(email: email, password: password));
    return true;
  }
}
