import 'dart:convert';

import 'package:dad_jokes/core/error/exception.dart';
import 'package:dad_jokes/data/api_keys.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/joke.dart';
import 'package:http/http.dart' as http;

/// Contracts for getting data from API
abstract class JokeRemoteDatabase {
  Future<Joke> getRandomJoke();
}

/// Implements [JokeRemoteDatabase]
class JokeRemoteDatabaseImpl implements JokeRemoteDatabase {
  /// Http client
  final http.Client client;

  // Constructor
  JokeRemoteDatabaseImpl(this.client);

  @override
  Future<Joke> getRandomJoke() async {
    final response = await client.get(
        Uri.parse(ApiKeys.url),
        headers: {
          'X-RapidAPI-Key': ApiKeys.dadJokes,
          'X-RapidAPI-Host': ApiKeys.host
        }
    );
    // Checks if response is 200
    // returns a random joke
    if (response.statusCode == 200) {
      return Joke.fromJson(jsonDecode(response.body));
    } else {
      throw const DeviceException('Could not retrieve a joke');
    }
  }

}