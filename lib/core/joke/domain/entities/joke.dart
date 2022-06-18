import 'package:freezed_annotation/freezed_annotation.dart';

import 'joke_blue_print.dart';

// freezed dependencies
// flutter packages run build_runner build --delete-conflicting-outputs
part 'joke.freezed.dart';

part 'joke.g.dart';

@freezed
class Joke with _$Joke {
  const factory Joke({
    required String status,
    required List<JokeBluePrint> body,
  }) = _Joke;

  factory Joke.initial() => const Joke(status: '', body: [
        JokeBluePrint(
          id: '',
          setUp: '',
          punchLine: '',
          image: '',
        )
      ]);

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);
}
