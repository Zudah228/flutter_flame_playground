import 'dart:async';

import 'package:flame/components.dart';

import '../../../app_core/games/components/column.dart';
import '../../../app_core/games/material/material_game.dart';
import '../../../gen/assets.gen.dart';
import '../../../utils/extensions/assets_gen.dart';
import 'count_text.dart';

class FirstGame extends FlameScaffoldBackgroundGame {
  FirstGame(super.themeData)
      : super(
          children: [
            ColumnComponent(
              children: [
                _Image(),
                MaterialTextComponent.title(text: 'Panda'),
                MaterialTextComponent(text: 'Panda じゃないかも'),
                MaterialTextComponent(text: '🍅トマトかも'),
                CountText(count: 10),
              ],
            )
          ],
        ) {
    pauseWhenBackgrounded = false;
  }
}

class _Image extends SpriteComponent {
  _Image() : super(size: _size);

  static AssetGenImage get _image => Assets.images.panda;
  static Vector2 get _size => Vector2(_height * _aspectRatio, _height);
  static double get _height => 64;
  static double get _aspectRatio => 1.34;

  @override
  FutureOr<void> onLoad() async {
    sprite ??= await Sprite.load(_image.filename);
  }
}
