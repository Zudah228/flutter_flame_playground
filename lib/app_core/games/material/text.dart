import 'package:flame/components.dart';
import 'package:flutter/painting.dart';

import 'material_game.dart';

class MaterialTextComponent extends TextComponent with HasMaterialGame {
  MaterialTextComponent({super.text});

  factory MaterialTextComponent.title({required String text}) = _Title;

  @override
  void onMount() {
    super.onMount();
    textRenderer = TextPaint(
      style: textStyle,
    );
  }

  TextStyle get textStyle => themeData.textTheme.bodyMedium!;
}

class _Title extends MaterialTextComponent {
  _Title({required super.text});

  @override
  TextStyle get textStyle => themeData.textTheme.titleLarge!;
}
