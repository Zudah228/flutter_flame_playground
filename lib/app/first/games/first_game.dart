import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter_flame_playground/app_core/games/scaffold_game.dart';
import 'package:flutter_flame_playground/gen/assets.gen.dart';
import 'package:flutter_flame_playground/utils/extensions/assets_gen.dart';

class FirstGame extends FlameScaffoldBackgroundGame {
  FirstGame({required super.themeData}) : super(children: [_Image()]) {
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
