part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent {
  const SignInEvent();
}

class EmailChange extends SignInEvent {
  final String email;
  const EmailChange(this.email);
}

class PasswordChange extends SignInEvent {
  final String password;
  const PasswordChange(this.password);
}

class SignIn extends SignInEvent {
  const SignIn();
}

class Register extends SignInEvent {
  const Register();
}

class GoogleSignIn extends SignInEvent {
  const GoogleSignIn();
}
