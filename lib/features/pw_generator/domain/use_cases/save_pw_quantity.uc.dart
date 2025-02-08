import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app.failure.dart';
import '../../../../core/use_case/params/use_case.params.dart';
import '../../../../core/use_case/use_cases.dart';
import '../../data/repositories/pw_generator.repo.impl.dart';
import '../repositories/pw_generator.repo.dart';

part 'save_pw_quantity.uc.g.dart';

@riverpod
SavePwQuantity savePwQuantity(Ref ref) => SavePwQuantity(
      ref.watch(pwGeneratorRepositoryProvider),
    );

final class SavePwQuantity implements TaskUseCase<Unit, SavePwQuantityParams> {
  const SavePwQuantity(this.repository);

  final PwGeneratorRepository repository;

  @override
  TaskEither<AppFailure, Unit> call(SavePwQuantityParams params) =>
      repository.saveQuantity(params);
}
