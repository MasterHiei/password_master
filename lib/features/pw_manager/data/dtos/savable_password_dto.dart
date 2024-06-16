import 'package:hive/hive.dart';

import '../../domain/entities/savable_password.dart';

part 'savable_password_dto.g.dart';

@HiveType(typeId: 1)
class SavablePasswordDto extends HiveObject {
  SavablePasswordDto({
    required this.name,
    required this.value,
    required this.description,
    required this.sort,
  }) : updatedAt = DateTime.now();

  factory SavablePasswordDto.fromEntity(
    SavablePassword entity,
  ) =>
      SavablePasswordDto(
        name: entity.name,
        value: entity.value,
        description: entity.description,
        sort: entity.sort,
      );

  @HiveField(0)
  String name;

  @HiveField(1)
  String value;

  @HiveField(2)
  String description;

  @HiveField(3)
  int sort;

  @HiveField(4)
  DateTime updatedAt;
}
