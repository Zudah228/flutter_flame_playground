import 'package:flutter/material.dart';
import 'package:flutter_flame_playground/app_core/ui_parts/game_widgets/material_game_widget.dart';

import 'first_game.dart';

class FirstGameWidget extends StatelessWidget {
  const FirstGameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialGameWidget(gameFactory: FirstGame.new);
  }
}
