import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../../../../core/use_case/use_cases.dart';
import '../../data/repositories/pw_manager_repository_impl.dart';
import '../repositories/pw_manager_repository.dart';

part 'delete_passwords.g.dart';

@riverpod
DeletePasswords deletePasswords(Ref ref) => DeletePasswords(
      ref.watch(pwManagerRepositoryProvider),
    );

final class DeletePasswords implements TaskUseCase<Unit, DeletePwsParams> {
  const DeletePasswords(this.repository);

  final PwManagerRepository repository;

  @override
  TaskEither<AppFailure, Unit> call(DeletePwsParams params) =>
      repository.delete(params);
}
