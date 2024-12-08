import 'package:flame/game.dart' as flame_game;
import 'package:flutter/material.dart';

import 'first_game.dart';

class FirstGameWidget extends StatelessWidget {
  const FirstGameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return flame_game.GameWidget.controlled(
      gameFactory: () {
        return FirstGame(themeData: themeData);
      },
    );
  }
}
