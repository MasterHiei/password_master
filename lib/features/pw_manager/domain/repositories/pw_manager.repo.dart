import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/app.failure.dart';
import '../../../../core/use_case/params/use_case.params.dart';
import '../entities/savable_password.entity.dart';

abstract class PwManagerRepository {
  TaskEither<AppFailure, List<SavablePassword>> getAll(NoParams params);

  TaskEither<AppFailure, Unit> save(
    SavePwParams params,
  );

  TaskEither<AppFailure, Unit> delete(
    DeletePwsParams params,
  );
}
