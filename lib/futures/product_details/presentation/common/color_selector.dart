import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            width: 16,
            height: 16,
            child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16 / 2)))),
        29.width,
        InkWell(
          onTap: () {},
          child: SvgPicture.asset('assets/images/chevron_down.svg'),
        )
      ],
    );
  }
}
