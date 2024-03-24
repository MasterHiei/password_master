import 'package:fpdart/fpdart.dart';

import '../../../core/errors/app_failure.dart';
import '../utils/logger.dart';

mixin RepositoryErrorHandlerMixin {
  IOEither<AppFailure, T> ioHandler<T>(
    T Function() run,
  ) =>
      IOEither<AppFailure, T>.tryCatch(
        run,
        (Object error, StackTrace stackTrace) {
          logger.e(error, error: error, stackTrace: stackTrace);
          return switch (error) {
            AppFailure() => error,
            _ => AppFailure.unexpectedError(error),
          };
        },
      );

  TaskEither<AppFailure, T> taskHandler<T>(
    Future<T> Function() run,
  ) =>
      TaskEither<AppFailure, T>.tryCatch(
        run,
        (Object error, StackTrace stackTrace) {
          logger.e(error, error: error, stackTrace: stackTrace);
          return switch (error) {
            AppFailure() => error,
            _ => AppFailure.unexpectedError(error),
          };
        },
      );
}
