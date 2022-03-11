import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Welcome'),
        Form(
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.account_circle),
                ),
              ),
              TextFormField(
                autocorrect: false,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: const Text('Sign In'),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      child: const Text('Register'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                child: const Text('Sign In with Google'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
