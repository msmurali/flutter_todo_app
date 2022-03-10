import 'package:dartz/dartz.dart';

import './failures/auth_failures.dart';
import './value_objects/email.dart';
import './value_objects/password.dart';

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
