import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/pw_settings.dart';
import '../../../../core/enums/pw_pattern.dart';

part 'pw_generator_provider.g.dart';

@riverpod
String pwGenerator(PwGeneratorRef ref) {
  final Random rand = Random();
  String random(String source) => source[rand.nextInt(source.length)];

  String password = '';
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
      PwPattern.number => random(PwSettings.numbers),
      PwPattern.specialChar => random(PwSettings.specialChars),
    };
  }
  return password;
}
