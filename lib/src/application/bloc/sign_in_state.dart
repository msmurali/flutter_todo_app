part of 'sign_in_bloc.dart';

@immutable
class SignInState {
  final Email email;
  final Password password;
  final bool isLoading;
  final bool showError;
  final Option<Either<AuthFailure, Unit>> authStatus;

  const SignInState({
    required this.email,
    required this.password,
    required this.isLoading,
    required this.showError,
    required this.authStatus,
  });

  SignInState copyWith({
    Email? email,
    Password? password,
    bool? isLoading,
    bool? showError,
    Option<Either<AuthFailure, Unit>>? authStatus,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      isLoading: isLoading ?? this.isLoading,
      showError: showError ?? this.showError,
      authStatus: authStatus ?? this.authStatus,
    );
  }
}
