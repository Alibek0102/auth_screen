import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/orders/presentation/constants/filters_list.dart';
import 'package:flutter/material.dart';

class OrdersFilterList extends StatelessWidget {
  const OrdersFilterList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27,
      child: ListView.separated(
        itemCount: filtersList.length,
        padding: const EdgeInsets.symmetric(horizontal: 27.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: AppColors.lightSilver,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Center(
                    child: Text(
                  filtersList[index].name,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w500),
                )),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return 13.width;
        },
      ),
    );
  }
}
