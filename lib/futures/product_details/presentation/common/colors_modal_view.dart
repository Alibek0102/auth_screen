import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/extensions/string_extension.dart';
import 'package:auth_screen/futures/product_details/presentation/constants/options.dart';
import 'package:flutter/material.dart';

class ColorsModalView extends StatelessWidget {
  final Function(String color)? onTap;

  const ColorsModalView({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Выбрать цвет',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              12.height,
              Expanded(
                child: ListView.builder(
                    itemCount: productColors.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: () {
                          if (onTap == null) return;
                          onTap!((productColors[index]['color'] as String));
                        },
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        title: Text(productColors[index]['title'] as String),
                        trailing: SizedBox(
                            width: 16,
                            height: 16,
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: (productColors[index]['color']
                                            as String)
                                        .toColor(),
                                    borderRadius:
                                        BorderRadiusDirectional.circular(
                                            16 / 2)))),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
