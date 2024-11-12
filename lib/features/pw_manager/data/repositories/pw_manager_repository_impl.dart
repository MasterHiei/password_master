import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/repository_error_handler_mixin.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../../domain/entities/savable_password.dart';
import '../../domain/repositories/pw_manager_repository.dart';
import '../data_sources/pw_manager_local_data_source.dart';
import '../dtos/savable_password_dto.dart';

part 'pw_manager_repository_impl.g.dart';

@riverpod
PwManagerRepository pwManagerRepository(Ref ref) => PwManagerRepositoryImpl(
      ref.watch(pwManagerLocalDataSourceProvider),
    );

class PwManagerRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements PwManagerRepository {
  const PwManagerRepositoryImpl(
    this.localDataSource,
  );

  final PwManagerLocalDataSource localDataSource;

  @override
  TaskEither<AppFailure, List<SavablePassword>> getAll(NoParams params) =>
      taskHandler(
        () async {
          final List<SavablePasswordDto>? dtos = await localDataSource.getAll();
          return switch (dtos) {
            null => <SavablePassword>[],
            _ => dtos.map(SavablePassword.fromDto).toList(),
          };
        },
      );

  @override
  TaskEither<AppFailure, Unit> save(SavePwParams params) => taskHandler(
        () async {
          final SavablePasswordDto entity = SavablePasswordDto.fromEntity(
            params.value,
          );
          await localDataSource.save(entity);
          return unit;
        },
      );

  @override
  TaskEither<AppFailure, Unit> delete(DeletePwsParams params) => taskHandler(
        () async {
          final Iterable<SavablePasswordDto> dtos = params.values.map(
            SavablePasswordDto.fromEntity,
          );
          await localDataSource.delete(dtos);
          return unit;
        },
      );
}
