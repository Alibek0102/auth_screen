import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final int count;

  const CategoryTitle({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        '${title} (${count})',
        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
