import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                TextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.dispatch(CreateUser(email: email.text, password: password.text));
                    }
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
