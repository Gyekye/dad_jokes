import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../../../data/images.dart';

///  Created by gyekye on 22/06/18.
class JokeCard extends StatelessWidget {
  const JokeCard({
    Key? key,
    required this.setUp,
    required this.punchLine,
    required this.status,
  })
      : super(key: key);

  /// Joke setup
  final String setUp;

  /// Joke punchline
  final String punchLine;

  /// Joke status
  final String status;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.transparent,

      /// background color of card
      color: Colors.transparent,
      child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black12.withOpacity(0.15), BlendMode.multiply),
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                  image: const Svg(
                    Images.background,
                    size: Size(900, 450),
                  ))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(setUp,
                  style: Theme
                      .of(context)
                      .textTheme
                      .subtitle2!
                      .apply(fontWeightDelta: 2,
                      color: Colors.white,
                      fontSizeDelta: 2),
                ),
              ),
              Text(
                punchLine,
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle2!
                    .apply(fontWeightDelta: 1, fontSizeDelta: 2),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Chip(
                  avatar: const Icon(Icons.check_circle_outline),
                  label: Text(status),
                  backgroundColor: Colors.green,
                ),
              )
            ],
          )),
    );
  }
}