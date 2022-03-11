import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Todoist'),
            centerTitle: true,
            leading: ElevatedButton(
              child: const Icon(Icons.logout),
              onPressed: () {},
            ),
            actions: [
              ElevatedButton(
                child: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
          body: Container(),
        ),
      ),
    );
  }
}
