import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class MaterialGameWidget extends StatelessWidget {
  const MaterialGameWidget({super.key, required this.gameFactory});

  final Game Function(ThemeData themeData) gameFactory;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    // Theme の更新でのみリビルドされるので、
    // .controlled ではなく、通常のコンストラクタを使用している
    return GameWidget(game: gameFactory(themeData));
  }
}
