import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/value_objects/password.dart';
import 'pw_generator_length_provider.dart';
import 'pw_generator_patterns_provider.dart';
import 'pw_generator_quantity_provider.dart';

part 'pw_generator_provider.g.dart';

@riverpod
List<String> pwGenerator(PwGeneratorRef ref, {int? seed}) =>
    List<String>.generate(
      ref.watch(pwGeneratorQuantityProvider).toInt(),
      (_) => Password.generate(
        length: ref.watch(pwGeneratorLengthProvider),
        patterns: ref.watch(pwGeneratorPatternsProvider),
      ).value,
    );
