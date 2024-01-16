import 'package:firebase_auth/firebase_auth.dart';

import '../models/app_user.dart';

class AuthApi {
  const AuthApi({required FirebaseAuth auth}) : _auth = auth;

  final FirebaseAuth _auth;

  Future<AppUser?> getCurrentUser() async {
    final User? user = _auth.currentUser;

    if (user != null) {
      final String email = user.email!;
      return _extractUser(email);
    }
    return null;
  }

  Future<AppUser> createUser({required String email, required String password}) async {
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return _extractUser(email);
  }

  Future<AppUser> login({required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    return _extractUser(email);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  AppUser _extractUser(String email) {
    final String displayName = email.split('@').first;
    return AppUser(
      email: email,
      displayName: displayName,
    );
  }
}
