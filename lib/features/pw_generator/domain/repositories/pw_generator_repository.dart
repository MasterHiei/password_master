import 'package:fpdart/fpdart.dart';

import '../../../../core/enums/pw_pattern.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/use_case/params/use_case_params.dart';

abstract class PwGeneratorRepository {
  IOEither<AppFailure, int> getQuantity(
    NoParams params,
  );

  TaskEither<AppFailure, Unit> saveQuantity(
    SavePwQuantityParams params,
  );

  IOEither<AppFailure, int> getLength(
    NoParams params,
  );

  TaskEither<AppFailure, Unit> saveLength(
    SavePwLengthParams params,
  );

  IOEither<AppFailure, List<PwPattern>> getPatterns(
    NoParams params,
  );

  TaskEither<AppFailure, Unit> savePatterns(
    SavePwPatternsParams params,
  );
}
