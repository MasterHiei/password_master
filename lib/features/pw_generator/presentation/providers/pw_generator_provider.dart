import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/pw_settings.dart';
import '../../../../core/enums/pw_pattern.dart';

part 'pw_generator_provider.g.dart';

@riverpod
String pwGenerator(PwGeneratorRef ref, {int? seed}) {
  final Random rand = Random.secure();
  String password = '';

  String random(String source) {
    final String value = source[rand.nextInt(source.length)];

    if (password.isEmpty) {
      return value;
    }

    // Avoid using the same character consecutively
    final String prevChar = password.substring(password.length - 1);
    if (value != prevChar) {
      return value;
    }

    return random(source);
  }

  for (int i = 0; i < PwSettings.maxLength; i++) {
    // Avoid using number or symbol as the first character
    final List<PwPattern> patterns = switch (i) {
      0 => <PwPattern>[PwPattern.lowerCase, PwPattern.upperCase],
      _ => PwPattern.values,
    };

    // Generate password with random pattern
    final PwPattern pattern = patterns[rand.nextInt(patterns.length)];
    password += switch (pattern) {
      PwPattern.lowerCase => random(PwSettings.lowerCase),
      PwPattern.upperCase => random(PwSettings.upperCase),
      PwPattern.numbers => random(PwSettings.numbers),
      PwPattern.symbols => random(PwSettings.symbols),
    };
  }
  return password;
}
