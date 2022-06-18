import 'core/joke/joke_injection.dart';
import 'package:get_it/get_it.dart';


/// new instance of get_it
final GetIt sl = GetIt.instance;

/// Integrates all other parts of the app
void init() {
  /// Joke Injection
  initJoke();
}
