import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features/pw_manager/domain/entities/savable_password.dart';
import '../../enums/pw_pattern.dart';

part 'use_case_params.freezed.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class UseCaseParams with _$UseCaseParams {
  const factory UseCaseParams.no() = NoParams;

  const factory UseCaseParams.savePwQuantity(
    int value,
  ) = SavePwQuantityParams;

  const factory UseCaseParams.savePwLength(
    int value,
  ) = SavePwLengthParams;

  const factory UseCaseParams.savePwPatterns(
    List<PwPattern> value,
  ) = SavePwPatternsParams;

  const factory UseCaseParams.savePassword(
    SavablePassword value,
  ) = SavePwParams;

  const factory UseCaseParams.deletePasswords(
    List<SavablePassword> values,
  ) = DeletePwsParams;
}
