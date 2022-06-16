import '../../domain/entities/joke.dart';


/// Contracts for getting data from API
abstract class JokeRemoteDatabase {
  Future<Joke> getRandomJoke();
}

/// Implements [JokeRemoteDatabase]
class JokeRemoteDatabaseImpl implements JokeRemoteDatabase {
  @override
  Future<Joke> getRandomJoke() {
    // TODO: implement getRandomJoke
    throw UnimplementedError();
  }

}