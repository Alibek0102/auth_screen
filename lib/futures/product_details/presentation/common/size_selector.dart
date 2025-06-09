import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'S',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        29.width,
        InkWell(
          onTap: () {},
          child: SvgPicture.asset('assets/images/chevron_down.svg'),
        )
      ],
    );
  }
}
