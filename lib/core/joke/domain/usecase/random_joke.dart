import 'package:dad_jokes/core/error/failure.dart';
import 'package:dad_jokes/core/joke/domain/repositories/joke_repository.dart';
import 'package:dad_jokes/core/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

import '../entities/joke.dart';

/// Usecase for getting a random joke
class GetRandomJoke extends Usecase<Joke, NoParams> {
  final JokeRepository repository;

  /// Constructor
  GetRandomJoke(this.repository);

  /// Returns the getRandomJoke contract from JokeRepository
  @override
  Future<Either<Failure, Joke>> call(NoParams params) => repository.getRandomJoke();
}
