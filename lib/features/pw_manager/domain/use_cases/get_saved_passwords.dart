import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../../../../core/use_case/use_cases.dart';
import '../../data/repositories/pw_manager_repository_impl.dart';
import '../entities/savable_password.dart';
import '../repositories/pw_manager_repository.dart';

part 'get_saved_passwords.g.dart';

@riverpod
GetSavedPasswords getSavedPasswords(Ref ref) => GetSavedPasswords(
      ref.watch(pwManagerRepositoryProvider),
    );

final class GetSavedPasswords
    implements TaskUseCase<List<SavablePassword>, NoParams> {
  const GetSavedPasswords(this.repository);

  final PwManagerRepository repository;

  @override
  TaskEither<AppFailure, List<SavablePassword>> call(NoParams params) =>
      repository.getAll(params);
}
