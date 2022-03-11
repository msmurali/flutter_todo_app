import 'package:flutter/material.dart';
import '../router/app_routes.dart';
import '../themes/app_themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todoist',
      theme: AppThemes.light,
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: '/',
    );
  }
}
