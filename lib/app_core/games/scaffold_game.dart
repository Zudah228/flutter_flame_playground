import 'package:flame/game.dart';
import 'package:flutter/material.dart';

abstract class FlameScaffoldBackgroundGame extends FlameGame {
  FlameScaffoldBackgroundGame({
    super.children,
    super.world,
    super.camera,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Color backgroundColor() {
    return themeData.scaffoldBackgroundColor;
  }
}
