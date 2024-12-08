import 'package:flutter/material.dart';
import 'package:flutter_flame_playground/app/home/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardTheme: const CardTheme(
          clipBehavior: Clip.antiAlias,
        ),
      ),
      home: const HomePage(),
    );
  }
}
