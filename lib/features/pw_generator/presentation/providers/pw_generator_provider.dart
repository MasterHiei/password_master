import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/pw_settings.dart';
import '../../../../core/enums/pw_pattern.dart';
import 'pw_generator_length_provider.dart';
import 'pw_generator_patterns_provider.dart';
import 'pw_generator_quantity_provider.dart';

part 'pw_generator_provider.g.dart';

@riverpod
List<String> pwGenerator(PwGeneratorRef ref, {int? seed}) {
  final double quantity = ref.watch(pwGeneratorQuantityProvider);
  return List<String>.generate(quantity.toInt(), (_) => _generatePw(ref));
}

String _generatePw(PwGeneratorRef ref) {
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

  final double length = ref.watch(pwGeneratorLengthProvider);
  for (int i = 0; i < length; i++) {
    final List<PwPattern> enabledPatterns =
        ref.watch(pwGeneratorPatternsProvider);
    List<PwPattern> patterns = enabledPatterns;
    if (i == 0) {
      // Avoid using number or symbol as the first character
      patterns = enabledPatterns
          .where(
            (PwPattern ele) => <PwPattern>[
              PwPattern.lowerCase,
              PwPattern.upperCase,
            ].contains(ele),
          )
          .toList();
    }
    if (patterns.isEmpty) {
      patterns = enabledPatterns;
    }

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
