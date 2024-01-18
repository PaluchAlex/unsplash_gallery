import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/app_user.dart';

class AuthApi {
  const AuthApi({required FirebaseAuth auth, required FirebaseStorage storage})
      : _auth = auth,
        _storage = storage;

  final FirebaseAuth _auth;
  final FirebaseStorage _storage;

  Future<AppUser?> getCurrentUser() async {
    final User? user = _auth.currentUser;

    if (user != null) {
      return _extractUser();
    }
    return null;
  }

  Future<AppUser> createUser({required String email, required String password}) async {
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return _extractUser();
  }

  Future<AppUser> login({required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    return _extractUser();
  }

  Future<AppUser> changePicture(String path) async {
    final User user = _auth.currentUser!;

    final Reference ref = _storage.ref('users/${user.uid}/profile.png');
    await ref.putFile(File(path));
    final String url = await ref.getDownloadURL();

    await user.updatePhotoURL(url);
    return _extractUser();
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  AppUser _extractUser() {
    final User user = _auth.currentUser!;
    final String email = user.email!;
    final String displayName = email.split('@').first;
    return AppUser(
      uid: user.uid,
      email: email,
      displayName: displayName,
      pictureUrl: user.photoURL,
    );
  }
}
