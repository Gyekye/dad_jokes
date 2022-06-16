// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Joke _$$_JokeFromJson(Map<String, dynamic> json) => _$_Joke(
      status: json['status'] as String,
      body: (json['body'] as List<dynamic>)
          .map((e) => JokeBluePrint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JokeToJson(_$_Joke instance) => <String, dynamic>{
      'status': instance.status,
      'body': instance.body,
    };
