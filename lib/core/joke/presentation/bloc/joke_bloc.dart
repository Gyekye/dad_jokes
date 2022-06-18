import 'package:dad_jokes/core/error/failure.dart';
import 'package:dad_jokes/core/usecase/base_usecase.dart';

import '../../domain/entities/joke.dart';
import '../../domain/usecase/random_joke.dart';

/// Bloc for logic and state management
class JokeBloc {
  /// Dependencies mostly usescases
  /// Returns a random joke from dad jokes api
  final GetRandomJoke getRandomJoke;

  /// Constructor
  JokeBloc({required this.getRandomJoke});

  /// Future that returns a random joke
  Future<Joke> randomJoke() async {
    final result = await getRandomJoke(NoParams());
    return result.fold((failure) => Joke.initial(), (joke) => joke );
  }
}
