import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/use_case/params/use_case_params.dart';

abstract class PwManagerRepository {
  TaskEither<AppFailure, Unit> save(
    SavePwParams params,
  );

  TaskEither<AppFailure, Unit> delete(
    DeletePwsParams params,
  );
}
