import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.invalidPassword({
    required T failedValue,
  }) = InvalidPassword<T>;

  const factory ValueFailure.exceedingMaxLength({
    required T failedValue,
    required int max,
  }) = ExceedingMaxLength<T>;

  const factory ValueFailure.emptyNote({
    required T failedValue,
  }) = EmptyNote<T>;

  const factory ValueFailure.emptyTodo({
    required T failedValue,
  }) = EmptyTodo<T>;
}
