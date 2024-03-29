import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:dartz/dartz.dart';

import '../../domain/auth/failures/auth_failures.dart';
import '../../domain/core/value_objects/password.dart';
import '../../domain/core/value_objects/email.dart';
import '../../domain/core/entities/user.dart';
import '../../domain/core/value_objects/uid.dart';

class FirebaseAuthFacade {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  FirebaseAuthFacade(this.firebaseAuth, this.googleSignIn);

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    final String emailVal = email.getOrCrash();
    final String passwordVal = password.getOrCrash();
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: emailVal,
        password: passwordVal,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
    return right(unit);
  }

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    final String emailVal = email.getOrCrash();
    final String passwordVal = password.getOrCrash();
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: emailVal,
        password: passwordVal,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' ||
          e.code == 'user-not-found' ||
          e.code == 'user-disabled') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
    return right(unit);
  }

  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    final GoogleSignInAccount? account = await googleSignIn.signIn();
    if (account == null) {
      return left(const AuthFailure.cancelledByUser());
    } else {
      final GoogleSignInAuthentication authentication =
          await account.authentication;
      final OAuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: authentication.idToken,
        accessToken: authentication.accessToken,
      );

      try {
        await firebaseAuth.signInWithCredential(authCredential);
      } on FirebaseAuthException catch (_) {
        return left(const AuthFailure.serverError());
      }

      return right(unit);
    }
  }

  Future<Option<User>> getCurrentUser() async {
    if (firebaseAuth.currentUser == null) {
      return none();
    }
    return some(
      User(
        uid: Uid.fromString(
          firebaseAuth.currentUser!.uid,
        ),
      ),
    );
  }

  Future<void> signOut() => Future.wait([
        googleSignIn.signOut(),
        firebaseAuth.signOut(),
      ]);
}
