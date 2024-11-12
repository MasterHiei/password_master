import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../../../../core/use_case/use_cases.dart';
import '../../data/repositories/pw_generator_repository_impl.dart';
import '../repositories/pw_generator_repository.dart';

part 'save_pw_patterns.g.dart';

@riverpod
SavePwPatterns savePwPatterns(Ref ref) => SavePwPatterns(
      ref.watch(pwGeneratorRepositoryProvider),
    );

final class SavePwPatterns implements TaskUseCase<Unit, SavePwPatternsParams> {
  const SavePwPatterns(this.repository);

  final PwGeneratorRepository repository;

  @override
  TaskEither<AppFailure, Unit> call(SavePwPatternsParams params) =>
      repository.savePatterns(params);
}
