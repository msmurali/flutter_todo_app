import 'package:flutter/material.dart';

import '../screens/splash_screen.dart';
import '../screens/sign_in_screen.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    String route = settings.name ?? '/';
    switch (route) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case '/sign-in':
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        );
    }
  }
}
