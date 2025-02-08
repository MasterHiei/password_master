import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/value_objects/password.vo.dart';
import 'pw_generator_length.provider.dart';
import 'pw_generator_patterns.provider.dart';
import 'pw_generator_quantity.provider.dart';

part 'pw_generator.provider.g.dart';

@riverpod
List<String> pwGenerator(Ref ref, {int? seed}) => List<String>.generate(
      ref.watch(pwGeneratorQuantityProvider).toInt(),
      (_) => Password.generate(
        length: ref.watch(pwGeneratorLengthProvider),
        patterns: ref.watch(pwGeneratorPatternsProvider),
      ).value,
    );
