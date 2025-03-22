import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 56,
              height: 56,
              child: CircleAvatar()
            ),
            Spacer(),
            Text(
              'Shoes',
              style: TextStyle(
                fontSize: 12
              ),
              maxLines: 1,
            ),
          ],
        ),
        13.width
      ],
    );
  }
}