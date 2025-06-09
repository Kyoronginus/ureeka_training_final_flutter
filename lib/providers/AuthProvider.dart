import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final AuthService _authService = AuthService();
  User? _user;

  AuthProvider() {
    _auth.authStateChanges().listen((user) {
      _user = user;
      notifyListeners();
    });
  }

  User? get user => _user;

  bool get isLoggedIn => _user != null;

  AuthService get authService => _authService;

  Future<void> signIn(String email, String password) async {
    await _authService.signIn(email, password);
  }

  Future<void> register(String email, String password) async {
    await _authService.register(email, password);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
