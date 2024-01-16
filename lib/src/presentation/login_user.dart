import 'package:flutter/material.dart';

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
                      context.dispatch(Login(email: email.text, password: password.text));
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
