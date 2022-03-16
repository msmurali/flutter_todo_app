import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/entities/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade iAuthFacade = IAuthFacade();

  AuthBloc() : super(const AuthInitial()) {
    on<CheckAuth>(_onCheckAuth);
    on<SignOut>(_onSignOut);
  }

  FutureOr<void> _onCheckAuth(
    CheckAuth event,
    Emitter<AuthState> emitter,
  ) async {
    final Option<User> user = await iAuthFacade.getCurrentUser();
    emitter.call(
      user.fold(
        () => const UnAuthenticated(),
        (_) => const Authenticated(),
      ),
    );
  }

  FutureOr<void> _onSignOut(
    SignOut event,
    Emitter<AuthState> emitter,
  ) async {
    await iAuthFacade.signOut();

    emitter.call(
      const UnAuthenticated(),
    );
  }
}
