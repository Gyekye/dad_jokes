// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Joke _$$_JokeFromJson(Map<String, dynamic> json) => _$_Joke(
      id: json['id'] as String,
      setUp: json['setUp'] as String,
      punchLine: json['punchLine'] as String,
      image: json['image'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_JokeToJson(_$_Joke instance) => <String, dynamic>{
      'id': instance.id,
      'setUp': instance.setUp,
      'punchLine': instance.punchLine,
      'image': instance.image,
      'status': instance.status,
    };
