import '../failures/value_failures.dart';

class UnExpectedValueError extends Error {
  final ValueFailure failure;

  UnExpectedValueError(this.failure);

  @override
  String toString() {
    return Error.safeToString('Encountered a ValueFailure : $failure');
  }
}
