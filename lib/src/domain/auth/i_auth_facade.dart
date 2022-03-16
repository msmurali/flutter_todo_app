import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;

import '../../infrastructure/auth/firebase_auth_facade.dart';
import '../core/entities/user.dart';
import '../core/value_objects/email.dart';
import '../core/value_objects/password.dart';
import './failures/auth_failures.dart';

class IAuthFacade {
  final FirebaseAuthFacade firebaseAuthFacade = FirebaseAuthFacade(
    FirebaseAuth.instance,
    GoogleSignIn(),
  );

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
  }) {
    return firebaseAuthFacade.registerWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) {
    return firebaseAuthFacade.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    return firebaseAuthFacade.signInWithGoogle();
  }

  Future<void> signOut() {
    return firebaseAuthFacade.signOut();
  }

  Future<Option<User>> getCurrentUser() {
    return firebaseAuthFacade.getCurrentUser();
  }
}
