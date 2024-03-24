import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/pw_pattern.dart';

part 'use_case_params.freezed.dart';

@freezed
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
}
