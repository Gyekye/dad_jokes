import 'package:dartz/dartz.dart';

import '../../../error/failure.dart';
import '../entities/joke.dart';

/// Abstract contracts for usecase
abstract class JokeRepository {
  // Gets a random joke
  Future<Either<Failure, Joke>> getRandomJoke();
}
