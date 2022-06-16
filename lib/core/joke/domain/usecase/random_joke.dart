import 'package:dartz/dartz.dart';

import '../../../error/failure.dart';
import '../../../usecase/base_usecase.dart';
import '../entities/joke.dart';
import '../repositories/joke_repository.dart';

/// Usecase for getting a random joke
class GetRandomJoke extends Usecase<Joke, NoParams> {
  final JokeRepository repository;

  /// Constructor
  GetRandomJoke(this.repository);

  /// Returns the getRandomJoke contract from [JokeRepository]
  @override
  Future<Either<Failure, Joke>> call(NoParams params) =>
      repository.getRandomJoke();
}
