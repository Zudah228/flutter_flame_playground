import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../../../app_core/games/material/text.dart';

enum CountDirection {
  up,
  down,
  ;
}

class CountText extends MaterialTextComponent {
  CountText({
    this.formatCount = _defaultPaseCount,
    this.direction = CountDirection.down,
    required this.count,
  }) : timer = Timer(count.toDouble());

  final Timer timer;
  final String Function(double) formatCount;
  final int count;
  final CountDirection direction;

  static String _defaultPaseCount(double number) {
    return number.floor().toString();
  }

  @protected
  double parseCount() {
    return switch (direction) {
      CountDirection.up => timer.current,
      CountDirection.down => count - (timer.current - 1),
    };
  }

  @override
  void update(double dt) {
    timer.update(dt);
    text = formatCount(parseCount());
    super.update(dt);
  }
}
