// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savable_password_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavablePasswordDtoAdapter extends TypeAdapter<SavablePasswordDto> {
  @override
  final int typeId = 1;

  @override
  SavablePasswordDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavablePasswordDto(
      name: fields[0] as String,
      value: fields[1] as String,
      description: fields[2] as String,
      sort: fields[3] as int,
    )..updatedAt = fields[4] as DateTime;
  }

  @override
  void write(BinaryWriter writer, SavablePasswordDto obj) {
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
      other is SavablePasswordDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
