import 'package:freezed_annotation/freezed_annotation.dart';


// freezed dependencies
// flutter packages run build_runner build --delete-conflicting-outputs
part 'joke.freezed.dart';

part 'joke.g.dart';

@freezed
class Joke with _$Joke {
  const factory Joke({
    required String icon_url,
    required String value
  }) = _Joke;

  factory Joke.initial() => const Joke(
    icon_url: '',
    value: ''
  );

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);
}
