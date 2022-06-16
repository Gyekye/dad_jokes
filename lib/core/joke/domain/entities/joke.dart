import 'package:freezed_annotation/freezed_annotation.dart';

// freezed dependencies
// flutter packages run build_runner build --delete-conflicting-outputs
part 'joke.freezed.dart';
part 'joke.g.dart';
/// Entity Model for a Joke
@freezed
class Joke with _$Joke{
  const factory Joke({
    required String id,
    required String setUp,
    required String punchLine,
    required String image,
    required String status,
}) = _Joke;

  /// FromJson method
factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);
}
