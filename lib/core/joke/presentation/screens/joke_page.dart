import 'package:flutter/foundation.dart';

import '../bloc/joke_bloc.dart';
import '../widgets/joke_card.dart';
import 'package:flutter/material.dart';

import '../../../../injection_container.dart';
import '../../domain/entities/joke.dart';

/// Main screen to display jokes
class JokePage extends StatefulWidget {
  /// Constructor
  const JokePage({Key? key}) : super(key: key);

  @override
  State<JokePage> createState() => _JokePageState();
}

class _JokePageState extends State<JokePage> {
  /// Bloc instance
  final bloc = sl<JokeBloc>();

  /// button pressed
  final buttonPressed = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Chuck Norris jokes'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: buttonPressed,
                builder: (context, value, Widget? child) {
                  return FutureBuilder<Joke>(
                      future: bloc.randomJoke(),
                      builder: (BuildContext context, snapshot) {
                        if (kDebugMode) {
                          print(value);
                        }
                        if (buttonPressed.value == value ) {
                          if (snapshot.hasData) {
                            const Duration(seconds: 200);
                            return JokeCard(
                              icon: snapshot.requireData.icon_url,
                              value: snapshot.requireData.value,
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator.adaptive(),
                            );
                          }
                        } else {
                          return const Center(
                            child: Text('Click on a button to get a joke'),
                          );
                        }
                      });
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () async {
          buttonPressed.value = !buttonPressed.value;
        },
        child: const Icon(Icons.lock_reset_outlined),
      ),
    );
  }
}
