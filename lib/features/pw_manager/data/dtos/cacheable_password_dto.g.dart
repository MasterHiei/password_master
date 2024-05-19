// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cacheable_password_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CacheablePasswordAdapter extends TypeAdapter<CacheablePassword> {
  @override
  final int typeId = 1;

  @override
  CacheablePassword read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CacheablePassword(
      name: fields[0] as String,
      value: fields[1] as String,
      description: fields[2] == null ? '' : fields[2] as String,
      sort: fields[3] as int,
    )..updatedAt = fields[4] as DateTime;
  }

  @override
  void write(BinaryWriter writer, CacheablePassword obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.value)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.sort)
      ..writeByte(4)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CacheablePasswordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
