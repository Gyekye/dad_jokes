import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../../../data/images.dart';

///  Created by gyekye on 22/06/18.
class JokeCard extends StatelessWidget {
  const JokeCard({
    Key? key,
    required this.icon,
    required this.value,
  }) : super(key: key);

  /// Joke setup
  final String icon;

  /// Joke punchline
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.transparent,

      /// background color of card
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.all(20),
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    value,
                    style: Theme.of(context).textTheme.subtitle2!.apply(
                        fontWeightDelta: 2,
                        color: Colors.white,
                        fontSizeDelta: 2,
                        fontSizeFactor: 1.5),
                  ),
                ),
                // CircleAvatar(
                //   backgroundImage: NetworkImage(icon),
                // )
              ],
            ),
          )),
    );
  }
}
