import 'package:flutter/material.dart';
import '../widgets/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: SafeArea(
        child: Scaffold(
          body: SignInForm(),
        ),
      ),
    );
  }
}
