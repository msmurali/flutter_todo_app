import 'package:dartz/dartz.dart';
import 'package:todoist/src/domain/core/failures/value_failures.dart';
import 'package:uuid/uuid.dart';

class Uid {
  final Either<ValueFailure<String>, String> value;

  factory Uid() {
    const Uuid uuid = Uuid();
    final String id = uuid.v4();
    return Uid._(right(id));
  }

  factory Uid.fromString(String idString) {
    return Uid._(right(idString));
  }

  const Uid._(this.value);
}
