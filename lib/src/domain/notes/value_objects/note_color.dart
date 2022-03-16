import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/failures/value_failures.dart';

@immutable
class NoteColor {
  final Either<ValueFailure<String>, Color> color;

  const NoteColor._(this.color);

  factory NoteColor(Color color) {
    return NoteColor._(
      right(color),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NoteColor && other.color == color;
  }

  @override
  int get hashCode => color.hashCode;

  @override
  String toString() => 'NoteColor(color: $color)';
}
