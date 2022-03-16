part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class CheckAuth extends AuthEvent {
  const CheckAuth();
}

class SignOut extends AuthEvent {
  const SignOut();
}
