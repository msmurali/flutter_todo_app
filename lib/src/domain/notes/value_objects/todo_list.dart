import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/failures/value_failures.dart';
import 'todo.dart';

@immutable
class TodoList {
  final Either<ValueFailure<String>, List<Todo>> value;

  const TodoList._(this.value);

  factory TodoList(List<Todo> input) {
    return TodoList._(
      right(input),
    );
  }

  int get size => value.getOrElse(() => []).length;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TodoList && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'TodoList(value: $value)';
}
