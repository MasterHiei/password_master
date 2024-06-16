import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/dtos/savable_password_dto.dart';

part 'savable_password.freezed.dart';

@freezed
class SavablePassword with _$SavablePassword {
  const factory SavablePassword({
    required String name,
    required String value,
    required String description,
    required int sort,
    required DateTime updatedAt,
  }) = _SavablePassword;

  factory SavablePassword.fromDto(
    SavablePasswordDto dto,
  ) =>
      SavablePassword(
        name: dto.name,
        value: dto.value,
        description: dto.description,
        sort: dto.sort,
        updatedAt: dto.updatedAt,
      );
}
