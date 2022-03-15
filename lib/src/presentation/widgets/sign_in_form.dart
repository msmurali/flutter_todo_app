import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/sign_in_bloc/sign_in_bloc.dart';
import '../../domain/core/failures/value_failures.dart';
import '../toast_msg_handler.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  String? Function(String?)? _validate(
      Either<ValueFailure<String>, String> either) {
    return either.fold(
        (f) => f.maybeMap(
              invalidEmail: (_) {
                String? showErrMsg(String? msg) {
                  return '👉 Invalid Email';
                }

                return showErrMsg;
              },
              invalidPassword: (_) {
                String? showErrMsg(String? msg) {
                  return '👉 Invalid Password';
                }

                return showErrMsg;
              },
              orElse: () => null,
            ),
        (r) => null);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.authStatus.fold(
          () => {},
          (either) => {
            either.fold(
              (failure) {
                final String msg = failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email Already in Use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid Email or Password',
                );
                showToastMsg(context, msg);
              },
              (_) => {
                // TODO: navigate
              },
            )
          },
        );
      },
      builder: (context, state) {
        return NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowIndicator();
            return true;
          },
          child: ListView(
            children: [
              if (state.isLoading)
                LinearProgressIndicator(
                  color: Theme.of(context).primaryColor,
                  backgroundColor:
                      Theme.of(context).primaryColor.withOpacity(0.3),
                ),
              const SizedBox(
                height: 100,
              ),
              Form(
                autovalidateMode: state.showError
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
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
                        '🎉 Welcome 🎉',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.black,
                              fontSize: 24.0,
                              letterSpacing: -.5,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(height: 32.0),
                      TextFormField(
                        initialValue: BlocProvider.of<SignInBloc>(context)
                            .state
                            .email
                            .value
                            .fold((failure) => null, (val) => val),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        autocorrect: false,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.account_circle),
                          isDense: true,
                        ),
                        onChanged: (val) =>
                            BlocProvider.of<SignInBloc>(context).add(
                          EmailChange(val),
                        ),
                        validator: _validate(
                          BlocProvider.of<SignInBloc>(context)
                              .state
                              .email
                              .value,
                        ),
                      ),
                      const SizedBox(height: 32.0),
                      TextFormField(
                        initialValue: BlocProvider.of<SignInBloc>(context)
                            .state
                            .password
                            .value
                            .fold((failure) => null, (val) => val),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        autocorrect: false,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          isDense: true,
                        ),
                        obscureText: true,
                        onChanged: (val) =>
                            BlocProvider.of<SignInBloc>(context).add(
                          PasswordChange(val),
                        ),
                        validator: _validate(
                          BlocProvider.of<SignInBloc>(context)
                              .state
                              .password
                              .value,
                        ),
                      ),
                      const SizedBox(height: 32.0),
                      const SignInOrRegisterButtonField(),
                      const SizedBox(height: 32.0),
                      const GoogleSignInButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SignInOrRegisterButtonField extends StatelessWidget {
  const SignInOrRegisterButtonField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            child: Text(
              'Sign In',
              style: Theme.of(context).textTheme.bodyText1!,
            ),
            onPressed: () {
              BlocProvider.of<SignInBloc>(context).add(const SignIn());
            },
          ),
        ),
        const SizedBox(width: 20.0),
        Expanded(
          child: ElevatedButton(
            child: Text(
              'Register',
              style: Theme.of(context).textTheme.bodyText1!,
            ),
            onPressed: () {
              BlocProvider.of<SignInBloc>(context).add(const Register());
            },
          ),
        ),
      ],
    );
  }
}

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
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
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.black,
                ),
          ),
        ],
      ),
      onPressed: () {
        BlocProvider.of<SignInBloc>(context).add(const GoogleSignIn());
      },
    );
  }
}
