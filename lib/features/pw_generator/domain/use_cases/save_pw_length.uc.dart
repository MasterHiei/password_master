import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app.failure.dart';
import '../../../../core/use_case/params/use_case.params.dart';
import '../../../../core/use_case/use_cases.dart';
import '../../data/repositories/pw_generator.repo.impl.dart';
import '../repositories/pw_generator.repo.dart';

part 'save_pw_length.uc.g.dart';

@riverpod
SavePwLength savePwLength(Ref ref) => SavePwLength(
      ref.watch(pwGeneratorRepositoryProvider),
    );

final class SavePwLength implements TaskUseCase<Unit, SavePwLengthParams> {
  const SavePwLength(this.repository);

  final PwGeneratorRepository repository;

  @override
  TaskEither<AppFailure, Unit> call(SavePwLengthParams params) =>
      repository.saveLength(params);
}
