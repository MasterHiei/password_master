import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/constants/pw_settings.dart';
import '../../../../core/enums/pw_pattern.dart';
import '../../../../core/errors/value_failure.dart';

@immutable
class Password<T extends String> {
  const Password._(this.value);

  final String value;

  static Either<ValueFailure<String>, Password<String>> parse<T extends String>(
    T? value,
  ) {
    if (value == null ||
        value.length < PwSettings.minLength ||
        value.length > PwSettings.maxLength) {
      return left(const ValueFailure<String>.invalidPassword());
    }
    return right(Password<String>._(value));
  }

  static Password<String> generate({
    required num length,
    required List<PwPattern> patterns,
  }) {
    String password = '';

    int randomIndex(int max) => Random.secure().nextInt(max);
    String randomChar(String source) {
      final String char = source[randomIndex(source.length)];

      // Avoid using the same character consecutively
      if (password.isEmpty) {
        return char;
      }
      final String prevChar = password.substring(password.length - 1);
      if (char != prevChar) {
        return char;
      }

      return randomChar(source);
    }

    for (int i = 0; i < length; i++) {
      Iterable<PwPattern> enabledPatterns = <PwPattern>[...patterns];
      // Avoid using number or symbol as the first character
      if (i == 0) {
        enabledPatterns = patterns.whereNot(
          (PwPattern ele) => <PwPattern>[
            PwPattern.numbers,
            PwPattern.symbols,
          ].contains(ele),
        );
        if (enabledPatterns.isEmpty) {
          enabledPatterns = patterns;
        }
      }

      // Generate password with random pattern
      final PwPattern pattern = enabledPatterns.elementAt(
        randomIndex(enabledPatterns.length),
      );
      password += switch (pattern) {
        PwPattern.lowerCase => randomChar(PwSettings.lowerCase),
        PwPattern.upperCase => randomChar(PwSettings.upperCase),
        PwPattern.numbers => randomChar(PwSettings.numbers),
        PwPattern.symbols => randomChar(PwSettings.symbols),
      };
    }
    return Password<String>._(password);
  }

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Password<String> && other.value == value;

  @override
  String toString() => value;
}
