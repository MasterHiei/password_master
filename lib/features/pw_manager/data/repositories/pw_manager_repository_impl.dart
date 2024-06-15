import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/repository_error_handler_mixin.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../../domain/repositories/pw_manager_repository.dart';
import '../data_sources/pw_manager_local_data_source.dart';

part 'pw_manager_repository_impl.g.dart';

@riverpod
PwManagerRepository pwManagerRepository(
  PwManagerRepositoryRef ref,
) =>
    PwManagerRepositoryImpl(
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
  TaskEither<AppFailure, Unit> save(SavePwParams params) => taskHandler(
        () async {
          await localDataSource.save(params.value);
          return unit;
        },
      );

  @override
  TaskEither<AppFailure, Unit> delete(DeletePwsParams params) => taskHandler(
        () async {
          await localDataSource.delete(params.values);
          return unit;
        },
      );
}
