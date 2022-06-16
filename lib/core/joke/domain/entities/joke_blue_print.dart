import 'package:freezed_annotation/freezed_annotation.dart';

/// Entity Model for a Joke Blue print
part 'joke_blue_print.freezed.dart';
part 'joke_blue_print.g.dart';

@freezed
class JokeBluePrint with _$JokeBluePrint{
  const factory JokeBluePrint({
    required String id,
    required String setUp,
    required String punchLine,
    required String image,
  }) = _JokeBluePrint;

  /// FromJson method
  factory JokeBluePrint.fromJson(Map<String, dynamic> json) => _$JokeBluePrintFromJson(json);
}
