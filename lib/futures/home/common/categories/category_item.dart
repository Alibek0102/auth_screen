import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Function()? onTap;

  const CategoryItem({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                  width: 56,
                  height: 56,
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.all(Radius.circular(56 / 2)),
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: AppColors.primaryViolet),
                      child: Center(
                          child: Text(
                        title[0].toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  )),
              const Spacer(),
              Text(
                title,
                style: const TextStyle(fontSize: 12),
                maxLines: 1,
              ),
            ],
          ),
          13.width
        ],
      ),
    );
  }
}
