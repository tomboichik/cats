import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'fact.freezed.dart';
part 'fact.g.dart';

@freezed
class Fact with _$Fact {
  @HiveType(typeId: 0)
  factory Fact({
    @HiveField(0) required String fact,
    @HiveField(1) DateTime? createdAt,
    @HiveField(2) image,
  }) = _Fact;

  factory Fact.fromJson(Map<String, dynamic> json) => _$FactFromJson(json);
}
