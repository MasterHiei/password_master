import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app.failure.dart';
import '../../../../core/use_case/params/use_case.params.dart';
import '../../../../core/use_case/use_cases.dart';
import '../../data/repositories/pw_generator.repo.impl.dart';
import '../repositories/pw_generator.repo.dart';

part 'get_pw_quantity.uc.g.dart';

@riverpod
GetPwQuantity getPwQuantity(Ref ref) => GetPwQuantity(
      ref.watch(pwGeneratorRepositoryProvider),
    );

final class GetPwQuantity implements IOUseCase<int, NoParams> {
  const GetPwQuantity(this.repository);

  final PwGeneratorRepository repository;

  @override
  IOEither<AppFailure, int> call(NoParams params) =>
      repository.getQuantity(params);
}
