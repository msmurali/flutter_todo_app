import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/failures/value_failures.dart';

@immutable
class Todo {
  final Either<ValueFailure<String>, String> value;

  const Todo._(this.value);

  factory Todo(String input) {
    return Todo._(
      validateTodo(input),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Todo && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Todo(value: $value)';
}

Either<ValueFailure<String>, String> validateTodo(String input) {
  if (input.isEmpty) {
    return left(
      ValueFailure.emptyTodo(
        failedValue: input,
      ),
    );
  } else {
    return right(input);
  }
}
