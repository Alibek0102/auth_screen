import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  final String headerTitle;
  final Function()? onShow;

  const ListHeader({super.key, required this.headerTitle, this.onShow});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$headerTitle',
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          InkWell(
            onTap: onShow,
            child: const Text(
              'See All',
              style: TextStyle(fontSize: 16.0),
            ),
          )
        ],
      ),
    );
  }
}
