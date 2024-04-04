import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  FavoritesScreen({super.key});

  final List<Map<String, String>> items = List.generate(
    50,
    (index) => {
      'title': 'Item $index',
      'description': 'Description for Item $index',
    },
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return RenderFavoriteItem(
            title: items[index]['title']!,
            description: items[index]['description']!,
          );
        },
      ),
    );
  }
}

class RenderFavoriteItem extends StatelessWidget {
  const RenderFavoriteItem({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(description),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      focusColor: const Color.fromARGB(255, 255, 182, 182),
      hoverColor: const Color.fromARGB(255, 150, 122, 122),
    );
  }
}
