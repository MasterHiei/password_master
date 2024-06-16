import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../entities/savable_password.dart';

abstract class PwManagerRepository {
  TaskEither<AppFailure, List<SavablePassword>> getAll(NoParams params);

  TaskEither<AppFailure, Unit> save(
    SavePwParams params,
  );

  TaskEither<AppFailure, Unit> delete(
    DeletePwsParams params,
  );
}
