import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../actions/app_action.dart';
import '../actions/create_user.dart';
import 'extensions.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({super.key});

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void _onResult(AppAction action) {
    if (action is CreateUserSuccessful) {
      Navigator.pop(context);
    } else if (action is CreateUserError) {
      final Object error = action.error;
      if (error is FirebaseAuthException && error.code == 'email-already-in-use') {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Account already exits'),
              content: Text('${error.message}'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/loginUser');
                  },
                  child: const Text('Login'),
                ),
              ],
            );
          },
        );
      } else {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Create user error'),
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
        title: const Text('Create user'),
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
                      return 'Password must have at least 6 characters.';
                    }

                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.dispatch(CreateUser(
                        email: email.text,
                        password: password.text,
                        result: _onResult,
                      ));
                    }
                  },
                  child: const Text('Create user'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/loginUser');
                  },
                  child: const Text('Login user'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
