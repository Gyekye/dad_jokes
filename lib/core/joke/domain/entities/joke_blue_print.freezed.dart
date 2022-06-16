// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_blue_print.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JokeBluePrint _$JokeBluePrintFromJson(Map<String, dynamic> json) {
  return _JokeBluePrint.fromJson(json);
}

/// @nodoc
mixin _$JokeBluePrint {
  String get id => throw _privateConstructorUsedError;
  String get setUp => throw _privateConstructorUsedError;
  String get punchLine => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeBluePrintCopyWith<JokeBluePrint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeBluePrintCopyWith<$Res> {
  factory $JokeBluePrintCopyWith(
          JokeBluePrint value, $Res Function(JokeBluePrint) then) =
      _$JokeBluePrintCopyWithImpl<$Res>;
  $Res call({String id, String setUp, String punchLine, String image});
}

/// @nodoc
class _$JokeBluePrintCopyWithImpl<$Res>
    implements $JokeBluePrintCopyWith<$Res> {
  _$JokeBluePrintCopyWithImpl(this._value, this._then);

  final JokeBluePrint _value;
  // ignore: unused_field
  final $Res Function(JokeBluePrint) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? setUp = freezed,
    Object? punchLine = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      setUp: setUp == freezed
          ? _value.setUp
          : setUp // ignore: cast_nullable_to_non_nullable
              as String,
      punchLine: punchLine == freezed
          ? _value.punchLine
          : punchLine // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_JokeBluePrintCopyWith<$Res>
    implements $JokeBluePrintCopyWith<$Res> {
  factory _$$_JokeBluePrintCopyWith(
          _$_JokeBluePrint value, $Res Function(_$_JokeBluePrint) then) =
      __$$_JokeBluePrintCopyWithImpl<$Res>;
  @override
  $Res call({String id, String setUp, String punchLine, String image});
}

/// @nodoc
class __$$_JokeBluePrintCopyWithImpl<$Res>
    extends _$JokeBluePrintCopyWithImpl<$Res>
    implements _$$_JokeBluePrintCopyWith<$Res> {
  __$$_JokeBluePrintCopyWithImpl(
      _$_JokeBluePrint _value, $Res Function(_$_JokeBluePrint) _then)
      : super(_value, (v) => _then(v as _$_JokeBluePrint));

  @override
  _$_JokeBluePrint get _value => super._value as _$_JokeBluePrint;

  @override
  $Res call({
    Object? id = freezed,
    Object? setUp = freezed,
    Object? punchLine = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_JokeBluePrint(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      setUp: setUp == freezed
          ? _value.setUp
          : setUp // ignore: cast_nullable_to_non_nullable
              as String,
      punchLine: punchLine == freezed
          ? _value.punchLine
          : punchLine // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JokeBluePrint implements _JokeBluePrint {
  const _$_JokeBluePrint(
      {required this.id,
      required this.setUp,
      required this.punchLine,
      required this.image});

  factory _$_JokeBluePrint.fromJson(Map<String, dynamic> json) =>
      _$$_JokeBluePrintFromJson(json);

  @override
  final String id;
  @override
  final String setUp;
  @override
  final String punchLine;
  @override
  final String image;

  @override
  String toString() {
    return 'JokeBluePrint(id: $id, setUp: $setUp, punchLine: $punchLine, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeBluePrint &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.setUp, setUp) &&
            const DeepCollectionEquality().equals(other.punchLine, punchLine) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(setUp),
      const DeepCollectionEquality().hash(punchLine),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_JokeBluePrintCopyWith<_$_JokeBluePrint> get copyWith =>
      __$$_JokeBluePrintCopyWithImpl<_$_JokeBluePrint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokeBluePrintToJson(this);
  }
}

abstract class _JokeBluePrint implements JokeBluePrint {
  const factory _JokeBluePrint(
      {required final String id,
      required final String setUp,
      required final String punchLine,
      required final String image}) = _$_JokeBluePrint;

  factory _JokeBluePrint.fromJson(Map<String, dynamic> json) =
      _$_JokeBluePrint.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get setUp => throw _privateConstructorUsedError;
  @override
  String get punchLine => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JokeBluePrintCopyWith<_$_JokeBluePrint> get copyWith =>
      throw _privateConstructorUsedError;
}
