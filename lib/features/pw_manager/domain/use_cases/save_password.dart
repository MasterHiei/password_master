import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../../../../core/use_case/use_cases.dart';
import '../../data/repositories/pw_manager_repository_impl.dart';
import '../repositories/pw_manager_repository.dart';

part 'save_password.g.dart';

@riverpod
SavePassword savePassword(Ref ref) => SavePassword(
      ref.watch(pwManagerRepositoryProvider),
    );

final class SavePassword implements TaskUseCase<Unit, SavePwParams> {
  const SavePassword(this.repository);

  final PwManagerRepository repository;

  @override
  TaskEither<AppFailure, Unit> call(SavePwParams params) =>
      repository.save(params);
}
