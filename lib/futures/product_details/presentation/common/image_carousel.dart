import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> images;

  const ImageCarousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 248,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 161,
            child: Image.network(images[index]),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return 10.width;
        },
      ),
    );
  }
}
