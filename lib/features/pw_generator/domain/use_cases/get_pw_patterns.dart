import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/enums/pw_pattern.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../../../../core/use_case/use_cases.dart';
import '../../data/repositories/pw_generator_repository_impl.dart';
import '../repositories/pw_generator_repository.dart';

part 'get_pw_patterns.g.dart';

@riverpod
GetPwPatterns getPwPatterns(GetPwPatternsRef ref) => GetPwPatterns(
      ref.watch(pwGeneratorRepositoryProvider),
    );

final class GetPwPatterns implements IOUseCase<List<PwPattern>, NoParams> {
  const GetPwPatterns(this.repository);

  final PwGeneratorRepository repository;

  @override
  IOEither<AppFailure, List<PwPattern>> call(NoParams params) =>
      repository.getPatterns(params);
}
