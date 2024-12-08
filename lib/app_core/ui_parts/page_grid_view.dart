import 'package:flutter/material.dart';

@immutable
class GridPageItem {
  const GridPageItem({
    required this.title,
    this.description,
    required this.route,
  });

  final String title;
  final String? description;
  final Route<dynamic> Function() route;
}

class PageGridView extends StatelessWidget {
  const PageGridView({super.key, required this.items});

  final List<GridPageItem> items;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: items.map((item) {
        return Card(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(item.route());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text(item.description ?? '')),
                Container(
                  width: double.infinity,
                  color: themeData.colorScheme.primary,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item.title,
                    style: themeData.textTheme.bodyLarge!.copyWith(
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
