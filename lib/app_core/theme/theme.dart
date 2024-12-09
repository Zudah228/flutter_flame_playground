import 'package:flutter/material.dart';

abstract final class MainAppThemeData {
  const MainAppThemeData._();
  
  static ThemeData get light {
    return _base(colorScheme: const ColorScheme.light());
  }

  static ThemeData get dark {
    return _base(colorScheme: const ColorScheme.dark());
  }

  static ThemeData _base({
    required ColorScheme colorScheme,
  }) {
    final foundation = ThemeData(colorScheme: colorScheme);

    return foundation.copyWith(
        cardTheme: const CardTheme(
      clipBehavior: Clip.antiAlias,
    ));
  }
}
