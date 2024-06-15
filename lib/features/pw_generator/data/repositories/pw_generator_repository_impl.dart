import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/pw_settings.dart';
import '../../../../core/enums/pw_pattern.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/repository_error_handler_mixin.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../../domain/repositories/pw_generator_repository.dart';
import '../data_sources/pw_generator_local_data_source.dart';

part 'pw_generator_repository_impl.g.dart';

@riverpod
PwGeneratorRepository pwGeneratorRepository(
  PwGeneratorRepositoryRef ref,
) =>
    PwGeneratorRepositoryImpl(
      ref.watch(pwGeneratorLocalDataSourceProvider),
    );

class PwGeneratorRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements PwGeneratorRepository {
  const PwGeneratorRepositoryImpl(
    this.localDataSource,
  );

  final PwGeneratorLocalDataSource localDataSource;

  @override
  IOEither<AppFailure, int> getQuantity(
    NoParams params,
  ) =>
      ioHandler(
        () => localDataSource.getQuantity() ?? PwSettings.defaultQuantity,
      );

  @override
  TaskEither<AppFailure, Unit> saveQuantity(
    SavePwQuantityParams params,
  ) =>
      taskHandler(
        () async {
          await localDataSource.saveQuantity(params.value);
          return unit;
        },
      );

  @override
  IOEither<AppFailure, int> getLength(
    NoParams params,
  ) =>
      ioHandler(
        () => localDataSource.getLength() ?? PwSettings.defaultLength,
      );

  @override
  TaskEither<AppFailure, Unit> saveLength(
    SavePwLengthParams params,
  ) =>
      taskHandler(
        () async {
          await localDataSource.saveLength(params.value);
          return unit;
        },
      );

  @override
  IOEither<AppFailure, List<PwPattern>> getPatterns(
    NoParams params,
  ) =>
      ioHandler(
        () {
          final List<String>? patterns = localDataSource.getPatterns();
          if (patterns == null) {
            return PwSettings.defaultPatterns;
          }
          return patterns.map((String ele) => PwPattern.parse(ele)).toList();
        },
      );

  @override
  TaskEither<AppFailure, Unit> savePatterns(
    SavePwPatternsParams params,
  ) =>
      taskHandler(
        () async {
          await localDataSource.savePatterns(
            params.value.map((PwPattern ele) => ele.value).toList(),
          );
          return unit;
        },
      );
}
