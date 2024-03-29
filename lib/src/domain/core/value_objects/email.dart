import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../errors/value_error.dart';
import '../failures/value_failures.dart';

@immutable
class Email {
  final Either<ValueFailure<String>, String> value;

  factory Email(String input) {
    return Email._(
      validateEmail(input),
    );
  }

  const Email._(this.value);

  String getOrCrash() {
    return value.fold(
      (failure) => throw UnExpectedValueError(failure),
      (email) => email,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Email && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Email(value: $value)';
}

Either<ValueFailure<String>, String> validateEmail(String input) {
  const String pattern =
      r"""^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$""";
  if (RegExp(pattern).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}
