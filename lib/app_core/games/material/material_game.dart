import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

export 'text.dart';

abstract class MaterialFlameGame extends FlameGame {
  MaterialFlameGame(
    this.themeData, {
    super.camera,
    super.children,
  });

  final ThemeData themeData;
}

abstract class FlameScaffoldBackgroundGame extends MaterialFlameGame {
  FlameScaffoldBackgroundGame(
    super.themeData, {
    super.children,
    super.camera,
  });

  @override
  Color backgroundColor() {
    return themeData.scaffoldBackgroundColor;
  }
}

typedef HasMaterialGame = HasAncestor<MaterialFlameGame>;

extension HasMaterialWorldReferenceEx on HasMaterialGame {
  ThemeData get themeData => ancestor.themeData;
  ColorScheme get colorScheme => themeData.colorScheme;
  TextTheme get textTheme => themeData.textTheme;
}

class MaterialTextBoxComponent extends TextBoxComponent with HasMaterialGame {
  MaterialTextBoxComponent({required super.text, super.boxConfig});

  @override
  void onMount() {
    super.onMount();
    textRenderer = TextPaint(
      style: textStyle,
    );
  }

  TextStyle get textStyle => themeData.textTheme.bodyMedium!;
}
