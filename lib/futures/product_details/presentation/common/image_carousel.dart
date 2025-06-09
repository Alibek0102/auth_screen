import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 248,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 161,
            child: ColoredBox(color: Colors.red),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return 10.width;
        },
      ),
    );
  }
}
