import 'package:flutter/material.dart';
import 'package:flutter_flame_playground/app/first/first_page.dart';

import '../../app_core/ui_parts/page_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const PageGridView(
        items: [GridPageItem(title: 'First', route: FirstPage.route)],
      ),
    );
  }
}
