import 'package:dad_jokes/core/error/exception.dart';
import 'package:dartz/dartz.dart';

import '../../../error/failure.dart';
import '../../../platform/network.dart';
import '../../domain/entities/joke.dart';
import '../../domain/repositories/joke_repository.dart';
import '../database/joke_remote_database.dart';

/// Concrete implementation of contracts from [JokeRepository]

class JokeRepositoryImpl implements JokeRepository {
  /// Remote Database for our joke i.e API
  final JokeRemoteDatabase remoteDatabase;

  /// Network connection
  final NetworkInfo networkInfo;

  /// Constructor
  JokeRepositoryImpl({required this.remoteDatabase, required this.networkInfo});

  /// Get DataSource
  ///  Check Network
  @override
  Future<Either<Failure, Joke>> getRandomJoke() async {
    /// Checks internet connection
    try{
      if(await networkInfo.hasInternet() == true){
        final results = await remoteDatabase.getRandomJoke();
        return Right(results);
      }
      else{
        return const Left(Failure('Check your internet connection :sad:'));
      }
    } on DeviceException catch (error){
      return Left(Failure(error.message));
    }
  }
}
