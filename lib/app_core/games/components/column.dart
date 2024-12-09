
import 'package:flame/components.dart';

class ColumnComponent extends PositionComponent {
  ColumnComponent({required Iterable<PositionComponent> super.children});

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);

    Component? current;
    for (final child in children) {
      const x = 0.0;

      if (child is! PositionComponent) {
        throw AssertionError(
          'ColumnComponent の children には、PositionComponent を使用してください',
        );
      }

      if (current is PositionComponent) {
        child.position = Vector2(x, current.y + current.height);
      } else {
        child.position = Vector2(x, 0);
      }

      current = child;
    }
  }
}