import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthState extends ChangeNotifier {
  AuthState() {
    FirebaseAuth.instance.authStateChanges().listen((event) {
      _user = event;
      notifyListeners();
    });
    FirebaseAuth.instance.idTokenChanges().listen((event) {
      _user = event;
      notifyListeners();
    });
  }

  User? _user;

  User? get user => _user;
}
