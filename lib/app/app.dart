import 'package:flutter/material.dart';
import 'package:flutter_flame_playground/app/home/home_page.dart';

import '../app_core/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MainAppThemeData.light,
      darkTheme: MainAppThemeData.dark,
      home: const HomePage(),
    );
  }
}
