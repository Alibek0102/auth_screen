import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ColorSelector extends StatelessWidget {
  final VoidCallback? onShow;
  final String? value;

  const ColorSelector({super.key, required this.onShow, this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        value != null
            ? SizedBox(
                width: 16,
                height: 16,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: value?.toColor(),
                        borderRadius: BorderRadius.circular(16 / 2))))
            : Text(
                value ?? 'Не выбран',
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
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
