import 'package:freezed_annotation/freezed_annotation.dart';

part 'savable_password.entity.freezed.dart';

@freezed
class SavablePassword with _$SavablePassword {
  const factory SavablePassword({
    required String name,
    required String value,
    required String description,
    required int sort,
    required DateTime updatedAt,
  }) = _SavablePassword;
}
