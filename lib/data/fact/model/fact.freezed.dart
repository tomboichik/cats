// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Fact _$FactFromJson(Map<String, dynamic> json) {
  return _Fact.fromJson(json);
}

/// @nodoc
mixin _$Fact {
  @HiveField(0)
  String get fact => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(2)
  dynamic get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FactCopyWith<Fact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactCopyWith<$Res> {
  factory $FactCopyWith(Fact value, $Res Function(Fact) then) =
      _$FactCopyWithImpl<$Res, Fact>;
  @useResult
  $Res call(
      {@HiveField(0) String fact,
      @HiveField(1) DateTime? createdAt,
      @HiveField(2) dynamic image});
}

/// @nodoc
class _$FactCopyWithImpl<$Res, $Val extends Fact>
    implements $FactCopyWith<$Res> {
  _$FactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fact = null,
    Object? createdAt = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      fact: null == fact
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FactCopyWith<$Res> implements $FactCopyWith<$Res> {
  factory _$$_FactCopyWith(_$_Fact value, $Res Function(_$_Fact) then) =
      __$$_FactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String fact,
      @HiveField(1) DateTime? createdAt,
      @HiveField(2) dynamic image});
}

/// @nodoc
class __$$_FactCopyWithImpl<$Res> extends _$FactCopyWithImpl<$Res, _$_Fact>
    implements _$$_FactCopyWith<$Res> {
  __$$_FactCopyWithImpl(_$_Fact _value, $Res Function(_$_Fact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fact = null,
    Object? createdAt = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Fact(
      fact: null == fact
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: freezed == image ? _value.image! : image,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_Fact implements _Fact {
  _$_Fact(
      {@HiveField(0) required this.fact,
      @HiveField(1) this.createdAt,
      @HiveField(2) this.image});

  factory _$_Fact.fromJson(Map<String, dynamic> json) => _$$_FactFromJson(json);

  @override
  @HiveField(0)
  final String fact;
  @override
  @HiveField(1)
  final DateTime? createdAt;
  @override
  @HiveField(2)
  final dynamic image;

  @override
  String toString() {
    return 'Fact(fact: $fact, createdAt: $createdAt, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fact &&
            (identical(other.fact, fact) || other.fact == fact) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fact, createdAt, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FactCopyWith<_$_Fact> get copyWith =>
      __$$_FactCopyWithImpl<_$_Fact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FactToJson(
      this,
    );
  }
}

abstract class _Fact implements Fact {
  factory _Fact(
      {@HiveField(0) required final String fact,
      @HiveField(1) final DateTime? createdAt,
      @HiveField(2) final dynamic image}) = _$_Fact;

  factory _Fact.fromJson(Map<String, dynamic> json) = _$_Fact.fromJson;

  @override
  @HiveField(0)
  String get fact;
  @override
  @HiveField(1)
  DateTime? get createdAt;
  @override
  @HiveField(2)
  dynamic get image;
  @override
  @JsonKey(ignore: true)
  _$$_FactCopyWith<_$_Fact> get copyWith => throw _privateConstructorUsedError;
}
