import 'package:flutter/material.dart';
import 'package:flutter_flame_playground/app/first/games/first_game_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage._();

  static const routeName = '/first';

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const FirstPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
      ),
      body: const Column(
        children: [
          Expanded(child: FirstGameWidget()),
        ],
      ),
    );
  }
}
