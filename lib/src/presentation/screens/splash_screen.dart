import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          Navigator.pushReplacementNamed(context, '');
        } else if (state is UnAuthenticated) {
          Navigator.pushReplacementNamed(context, '/sign-in');
        }
      },
      child: const Scaffold(
        body: Placeholder(),
      ),
    );
  }
}
