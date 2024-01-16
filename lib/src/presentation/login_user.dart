import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../actions/app_action.dart';
import '../actions/login.dart';
import 'extensions.dart';

class LoginUserPage extends StatefulWidget {
  const LoginUserPage({super.key});

  @override
  State<LoginUserPage> createState() => _LoginUserPageState();
}

class _LoginUserPageState extends State<LoginUserPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void _onResult(AppAction action) {
    if (action is LoginSuccessful) {
      Navigator.pop(context);
    } else if (action is LoginError) {
      final Object error = action.error;
      if (error is FirebaseAuthException && error.code == 'INVALID_LOGIN_CREDENTIALS') {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Login error'),
              content: Text('Account not found or incorrect password.'),
            );
          },
        );
      } else {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Login user error'),
              content: Text('${action.error}'),
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login user'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    hintText: 'email',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty || !value.contains('@')) {
                      return 'Provide a valid email address.';
                    }

                    return null;
                  },
                ),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'password',
                  ),
                  validator: (String? value) {
                    if (value == null || value.length < 6) {
                      return 'Password less than 6 characters.';
                    }

                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.dispatch(Login(email: email.text, password: password.text, result: _onResult));
                    }
                  },
                  child: const Text('Login user'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/createUser');
                  },
                  child: const Text('Create user'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
