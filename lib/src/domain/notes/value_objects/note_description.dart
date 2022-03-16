import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/failures/value_failures.dart';

const _maxLength = 1000;

@immutable
class NoteDescription {
  final Either<ValueFailure<String>, String> value;

  const NoteDescription._(this.value);

  factory NoteDescription(String input) {
    return NoteDescription._(
      validateNoteDescription(input),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NoteDescription && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'NoteDescription(value: $value)';
}

Either<ValueFailure<String>, String> validateNoteDescription(String input) {
  if (input.isEmpty) {
    return left(
      ValueFailure.emptyNote(failedValue: input),
    );
  } else if (input.length > _maxLength) {
    return left(
      ValueFailure.exceedingMaxLength(
        failedValue: input,
        max: _maxLength,
      ),
    );
  } else {
    return right(input);
  }
}
