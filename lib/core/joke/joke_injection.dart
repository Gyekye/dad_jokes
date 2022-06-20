import '../platform/network.dart';
import 'data/database/joke_remote_database.dart';
import 'data/repositories/joke_repository_implementation.dart';
import 'domain/repositories/joke_repository.dart';
import 'domain/usecase/random_joke.dart';
import 'presentation/bloc/joke_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

//// Dependency injection
/// Initialising get_it
void initJoke() {
  /// sl : Service Locator
  final GetIt sl = GetIt.instance;

  sl

    /// register bloc
    ..registerFactory(() => JokeBloc(getRandomJoke: sl()))

    /// register usecase
    ..registerLazySingleton(() => GetRandomJoke(sl()))

    /// register repository
    ..registerLazySingleton<JokeRepository>(
        () => JokeRepositoryImpl(remoteDatabase: sl(), networkInfo: sl()))

    /// http client
    ..registerLazySingleton(http.Client.new)

    /// network
    ..registerLazySingleton<NetworkInfo>(NetworkInfoImpl.new)

    /// register database
    ..registerLazySingleton<JokeRemoteDatabase>(
        () => JokeRemoteDatabaseImpl(sl()));
}
