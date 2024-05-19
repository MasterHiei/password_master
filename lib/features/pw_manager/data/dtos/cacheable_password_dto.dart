import 'package:hive/hive.dart';

part 'cacheable_password_dto.g.dart';

@HiveType(typeId: 1)
class CacheablePassword extends HiveObject {
  CacheablePassword({
    required this.name,
    required this.value,
    this.description = '',
    required this.sort,
  }) : updatedAt = DateTime.now();

  @HiveField(0)
  String name;

  @HiveField(1)
  String value;

  @HiveField(2, defaultValue: '')
  String description;

  @HiveField(3)
  int sort;

  @HiveField(4)
  DateTime updatedAt;
}
