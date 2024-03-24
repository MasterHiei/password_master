import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../../../../core/use_case/use_cases.dart';
import '../../data/repositories/pw_generator_repository_impl.dart';
import '../repositories/pw_generator_repository.dart';

part 'get_pw_length.g.dart';

@riverpod
GetPwLength getPwLength(GetPwLengthRef ref) => GetPwLength(
      ref.watch(pwGeneratorRepositoryProvider),
    );

final class GetPwLength implements IOUseCase<int, NoParams> {
  const GetPwLength(this.repository);

  final PwGeneratorRepository repository;

  @override
  IOEither<AppFailure, int> call(NoParams params) =>
      repository.getLength(params);
}
