import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app.failure.dart';
import '../../../../core/use_case/params/use_case.params.dart';
import '../../../../core/use_case/use_cases.dart';
import '../../data/repositories/pw_generator.repo.impl.dart';
import '../repositories/pw_generator.repo.dart';

part 'get_pw_length.uc.g.dart';

@riverpod
GetPwLength getPwLength(Ref ref) => GetPwLength(
      ref.watch(pwGeneratorRepositoryProvider),
    );

final class GetPwLength implements IOUseCase<int, NoParams> {
  const GetPwLength(this.repository);

  final PwGeneratorRepository repository;

  @override
  IOEither<AppFailure, int> call(NoParams params) =>
      repository.getLength(params);
}
