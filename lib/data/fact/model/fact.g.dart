// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FactAdapter extends TypeAdapter<_$_Fact> {
  @override
  final int typeId = 0;

  @override
  _$_Fact read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Fact(
      fact: fields[0] as String,
      createdAt: fields[1] as DateTime?,
      image: fields[2] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Fact obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.fact)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FactAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Fact _$$_FactFromJson(Map<String, dynamic> json) => _$_Fact(
      fact: json['fact'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      image: json['image'],
    );

Map<String, dynamic> _$$_FactToJson(_$_Fact instance) => <String, dynamic>{
      'fact': instance.fact,
      'createdAt': instance.createdAt?.toIso8601String(),
      'image': instance.image,
    };
