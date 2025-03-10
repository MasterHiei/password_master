import 'package:fpdart/fpdart.dart';

import '../errors/app.failure.dart';
import '../utils/logger.dart';

mixin RepositoryErrorHandlerMixin {
  IOEither<AppFailure, T> ioHandler<T>(
    T Function() run,
  ) =>
      IOEither<AppFailure, T>.tryCatch(
        run,
        (Object error, StackTrace stackTrace) {
          talker.error(error, (error: error, stackTrace: stackTrace));
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
          talker.error(error, (error: error, stackTrace: stackTrace));
          return switch (error) {
            AppFailure() => error,
            _ => AppFailure.unexpectedError(error),
          };
        },
      );
}
