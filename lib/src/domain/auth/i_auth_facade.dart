import 'package:dartz/dartz.dart';

import '../core/value_objects/email.dart';
import '../core/value_objects/password.dart';
import './failures/auth_failures.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
