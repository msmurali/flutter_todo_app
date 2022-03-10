import 'package:dartz/dartz.dart';
import '../failures/value_failures.dart';

class Password {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Password && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Password(value: $value)';
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const String pattern =
      r"""^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$""";
  if (RegExp(pattern).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}
