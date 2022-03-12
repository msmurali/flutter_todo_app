import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (true)
          LinearProgressIndicator(
            color: theme.primaryColor,
            backgroundColor: theme.primaryColor.withOpacity(0.3),
          ),
        Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32.0,
              horizontal: 24.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome 🎉',
                  style: theme.textTheme.bodyText1!.copyWith(
                    color: Colors.black,
                    fontSize: 24.0,
                    letterSpacing: -.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 32.0),
                TextFormField(
                  autocorrect: false,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.account_circle),
                  ),
                ),
                const SizedBox(height: 32.0),
                TextFormField(
                  autocorrect: false,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 32.0),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        child: Text(
                          'Sign In',
                          style: theme.textTheme.bodyText1!,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Expanded(
                      child: ElevatedButton(
                        child: Text(
                          'Register',
                          style: theme.textTheme.bodyText1!,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                ElevatedButton(
                  style: theme.elevatedButtonTheme.style!.copyWith(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'asset/images/google.svg',
                        width: 32.0,
                        height: 32.0,
                      ),
                      const SizedBox(width: 20.0),
                      Text(
                        'Sign In with Google',
                        style: theme.textTheme.bodyText1!.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
