import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/app_user.dart';

class AuthApi {
  const AuthApi({
    required FirebaseAuth auth,
    required FirebaseStorage storage,
    required FirebaseFirestore firestore,
  })  : _auth = auth,
        _storage = storage,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseStorage _storage;
  final FirebaseFirestore _firestore;

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
    await _firestore //
        .doc('users/${user.uid}')
        .update(<String, dynamic>{'pictureUrl': url});
    return _extractUser();
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<AppUser> _extractUser() async {
    final User user = _auth.currentUser!;

    final DocumentReference<Map<String, dynamic>> ref = _firestore.doc('users/${user.uid}');
    final DocumentSnapshot<Map<String, dynamic>> doc = await ref.get();

    AppUser appUser;
    if (doc.exists) {
      appUser = AppUser.fromJson(doc.data()!);
    } else {
      final String email = user.email!;
      final String displayName = email.split('@').first;
      appUser = AppUser(
        uid: user.uid,
        email: email,
        displayName: displayName,
        pictureUrl: user.photoURL,
      );

      await ref.set(appUser.toJson());
    }

    return appUser;
  }
}