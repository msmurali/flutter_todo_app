// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  InvalidPassword<T> invalidPassword<T>({required T failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

  ExceedingMaxLength<T> exceedingMaxLength<T>(
      {required T failedValue, required int max}) {
    return ExceedingMaxLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  EmptyNote<T> emptyNote<T>({required T failedValue}) {
    return EmptyNote<T>(
      failedValue: failedValue,
    );
  }

  EmptyTodo<T> emptyTodo<T>({required T failedValue}) {
    return EmptyTodo<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue, int max) exceedingMaxLength,
    required TResult Function(T failedValue) emptyNote,
    required TResult Function(T failedValue) emptyTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingMaxLength<T> value) exceedingMaxLength,
    required TResult Function(EmptyNote<T> value) emptyNote,
    required TResult Function(EmptyTodo<T> value) emptyTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue, int max) exceedingMaxLength,
    required TResult Function(T failedValue) emptyNote,
    required TResult Function(T failedValue) emptyTodo,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingMaxLength<T> value) exceedingMaxLength,
    required TResult Function(EmptyNote<T> value) emptyNote,
    required TResult Function(EmptyTodo<T> value) emptyTodo,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue, int max) exceedingMaxLength,
    required TResult Function(T failedValue) emptyNote,
    required TResult Function(T failedValue) emptyTodo,
  }) {
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
  }) {
    return invalidPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingMaxLength<T> value) exceedingMaxLength,
    required TResult Function(EmptyNote<T> value) emptyNote,
    required TResult Function(EmptyTodo<T> value) emptyTodo,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword({required T failedValue}) =
      _$InvalidPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingMaxLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingMaxLengthCopyWith(ExceedingMaxLength<T> value,
          $Res Function(ExceedingMaxLength<T>) then) =
      _$ExceedingMaxLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingMaxLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingMaxLengthCopyWith<T, $Res> {
  _$ExceedingMaxLengthCopyWithImpl(
      ExceedingMaxLength<T> _value, $Res Function(ExceedingMaxLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingMaxLength<T>));

  @override
  ExceedingMaxLength<T> get _value => super._value as ExceedingMaxLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingMaxLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingMaxLength<T> implements ExceedingMaxLength<T> {
  const _$ExceedingMaxLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingMaxLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExceedingMaxLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  $ExceedingMaxLengthCopyWith<T, ExceedingMaxLength<T>> get copyWith =>
      _$ExceedingMaxLengthCopyWithImpl<T, ExceedingMaxLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue, int max) exceedingMaxLength,
    required TResult Function(T failedValue) emptyNote,
    required TResult Function(T failedValue) emptyTodo,
  }) {
    return exceedingMaxLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
  }) {
    return exceedingMaxLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
    required TResult orElse(),
  }) {
    if (exceedingMaxLength != null) {
      return exceedingMaxLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingMaxLength<T> value) exceedingMaxLength,
    required TResult Function(EmptyNote<T> value) emptyNote,
    required TResult Function(EmptyTodo<T> value) emptyTodo,
  }) {
    return exceedingMaxLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
  }) {
    return exceedingMaxLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
    required TResult orElse(),
  }) {
    if (exceedingMaxLength != null) {
      return exceedingMaxLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingMaxLength<T> implements ValueFailure<T> {
  const factory ExceedingMaxLength({required T failedValue, required int max}) =
      _$ExceedingMaxLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  $ExceedingMaxLengthCopyWith<T, ExceedingMaxLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyNoteCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyNoteCopyWith(
          EmptyNote<T> value, $Res Function(EmptyNote<T>) then) =
      _$EmptyNoteCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyNoteCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyNoteCopyWith<T, $Res> {
  _$EmptyNoteCopyWithImpl(
      EmptyNote<T> _value, $Res Function(EmptyNote<T>) _then)
      : super(_value, (v) => _then(v as EmptyNote<T>));

  @override
  EmptyNote<T> get _value => super._value as EmptyNote<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(EmptyNote<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyNote<T> implements EmptyNote<T> {
  const _$EmptyNote({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyNote(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmptyNote<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $EmptyNoteCopyWith<T, EmptyNote<T>> get copyWith =>
      _$EmptyNoteCopyWithImpl<T, EmptyNote<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue, int max) exceedingMaxLength,
    required TResult Function(T failedValue) emptyNote,
    required TResult Function(T failedValue) emptyTodo,
  }) {
    return emptyNote(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
  }) {
    return emptyNote?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
    required TResult orElse(),
  }) {
    if (emptyNote != null) {
      return emptyNote(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingMaxLength<T> value) exceedingMaxLength,
    required TResult Function(EmptyNote<T> value) emptyNote,
    required TResult Function(EmptyTodo<T> value) emptyTodo,
  }) {
    return emptyNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
  }) {
    return emptyNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
    required TResult orElse(),
  }) {
    if (emptyNote != null) {
      return emptyNote(this);
    }
    return orElse();
  }
}

abstract class EmptyNote<T> implements ValueFailure<T> {
  const factory EmptyNote({required T failedValue}) = _$EmptyNote<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptyNoteCopyWith<T, EmptyNote<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyTodoCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyTodoCopyWith(
          EmptyTodo<T> value, $Res Function(EmptyTodo<T>) then) =
      _$EmptyTodoCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyTodoCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyTodoCopyWith<T, $Res> {
  _$EmptyTodoCopyWithImpl(
      EmptyTodo<T> _value, $Res Function(EmptyTodo<T>) _then)
      : super(_value, (v) => _then(v as EmptyTodo<T>));

  @override
  EmptyTodo<T> get _value => super._value as EmptyTodo<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(EmptyTodo<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyTodo<T> implements EmptyTodo<T> {
  const _$EmptyTodo({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyTodo(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmptyTodo<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $EmptyTodoCopyWith<T, EmptyTodo<T>> get copyWith =>
      _$EmptyTodoCopyWithImpl<T, EmptyTodo<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue, int max) exceedingMaxLength,
    required TResult Function(T failedValue) emptyNote,
    required TResult Function(T failedValue) emptyTodo,
  }) {
    return emptyTodo(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
  }) {
    return emptyTodo?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue, int max)? exceedingMaxLength,
    TResult Function(T failedValue)? emptyNote,
    TResult Function(T failedValue)? emptyTodo,
    required TResult orElse(),
  }) {
    if (emptyTodo != null) {
      return emptyTodo(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingMaxLength<T> value) exceedingMaxLength,
    required TResult Function(EmptyNote<T> value) emptyNote,
    required TResult Function(EmptyTodo<T> value) emptyTodo,
  }) {
    return emptyTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
  }) {
    return emptyTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingMaxLength<T> value)? exceedingMaxLength,
    TResult Function(EmptyNote<T> value)? emptyNote,
    TResult Function(EmptyTodo<T> value)? emptyTodo,
    required TResult orElse(),
  }) {
    if (emptyTodo != null) {
      return emptyTodo(this);
    }
    return orElse();
  }
}

abstract class EmptyTodo<T> implements ValueFailure<T> {
  const factory EmptyTodo({required T failedValue}) = _$EmptyTodo<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptyTodoCopyWith<T, EmptyTodo<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
