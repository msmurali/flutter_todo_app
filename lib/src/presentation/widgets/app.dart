import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/sign_in_bloc/sign_in_bloc.dart';
import '../router/app_routes.dart';
import '../themes/app_themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SignInBloc>(
          create: (context) => SignInBloc(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc()..add(const CheckAuth()),
        ),
      ],
      child: MaterialApp(
        title: 'Todoist',
        theme: AppThemes.light,
        onGenerateRoute: AppRoutes.generateRoute,
        initialRoute: '/',
      ),
    );
  }
}
