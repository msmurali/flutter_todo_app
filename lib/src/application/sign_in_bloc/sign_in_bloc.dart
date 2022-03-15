import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/failures/auth_failures.dart';
import '../../domain/core/value_objects/email.dart';
import '../../domain/core/value_objects/password.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

SignInState initialState = SignInState(
  email: Email(''),
  password: Password(''),
  isLoading: false,
  showError: false,
  authStatus: none(),
);

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _iAuthFacade = IAuthFacade();

  SignInBloc() : super(initialState) {
    on<EmailChange>(_onEmailChange);
    on<PasswordChange>(_onPasswordChange);
    on<GoogleSignIn>(_onGoogleSignIn);
    on<SignIn>(_onSignIn);
    on<Register>(_onRegister);
  }

  FutureOr<void> _onEmailChange(
    EmailChange event,
    Emitter<SignInState> emitter,
  ) {
    emitter.call(
      state.copyWith(
        email: Email(event.email),
        authStatus: none(),
      ),
    );
  }

  FutureOr<void> _onPasswordChange(
    PasswordChange event,
    Emitter<SignInState> emitter,
  ) {
    emitter.call(
      state.copyWith(
        password: Password(event.password),
        authStatus: none(),
      ),
    );
  }

  FutureOr<void> _onGoogleSignIn(
    GoogleSignIn event,
    Emitter<SignInState> emitter,
  ) async {
    emitter.call(
      state.copyWith(
        isLoading: true,
        authStatus: none(),
      ),
    );

    final authStatus = await _iAuthFacade.signInWithGoogle();

    emitter.call(
      state.copyWith(
        isLoading: false,
        authStatus: some(authStatus),
      ),
    );
  }

  FutureOr<void> _onSignIn(
    SignIn event,
    Emitter<SignInState> emitter,
  ) async =>
      await signInOrRegister(event, emitter);

  FutureOr<void> _onRegister(
    Register event,
    Emitter<SignInState> emitter,
  ) async =>
      await signInOrRegister(event, emitter);

  FutureOr<void> signInOrRegister(
    SignInEvent event,
    Emitter<SignInState> emitter,
  ) async {
    final bool hasValidEmail = state.email.value.isRight();
    final bool hasValidPassword = state.password.value.isRight();

    if (hasValidEmail && hasValidPassword) {
      emitter.call(
        state.copyWith(
          isLoading: true,
          authStatus: none(),
        ),
      );

      late Either<AuthFailure, Unit> authStatus;

      if (event is Register) {
        authStatus = await _iAuthFacade.registerWithEmailAndPassword(
          email: state.email,
          password: state.password,
        );
      } else {
        authStatus = await _iAuthFacade.signInWithEmailAndPassword(
          email: state.email,
          password: state.password,
        );
      }

      emitter.call(
        state.copyWith(
          isLoading: false,
          authStatus: some(authStatus),
        ),
      );
    } else {
      emitter.call(
        state.copyWith(
          showError: true,
          authStatus: none(),
        ),
      );
    }
  }
}
