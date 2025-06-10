import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SizeSelector extends StatelessWidget {
  final VoidCallback? onShow;
  final String? value;

  const SizeSelector({super.key, this.onShow, this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value ?? 'Не выбран',
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        29.width,
        InkWell(
          onTap: onShow,
          child: SvgPicture.asset('assets/images/chevron_down.svg'),
        )
      ],
    );
  }
}
