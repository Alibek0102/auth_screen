import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/product_details/presentation/constants/options.dart';
import 'package:flutter/material.dart';

class SizesModalView extends StatelessWidget {
  const SizesModalView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Выбрать размер',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              12.height,
              Expanded(
                child: ListView.builder(
                    itemCount: productSizes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        title: Text(productSizes[index]['title'] as String),
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
