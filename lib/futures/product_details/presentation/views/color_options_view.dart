import 'package:auth_screen/futures/product_details/presentation/blocs/details_cubit.dart';
import 'package:auth_screen/futures/product_details/presentation/common/color_selector.dart';
import 'package:auth_screen/futures/product_details/presentation/common/colors_modal_view.dart';
import 'package:auth_screen/futures/product_details/presentation/common/options_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorOptionsView extends StatelessWidget {
  final String? color;

  const ColorOptionsView({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return OptionsContainer(
      containerKey: 'Color',
      containerChild: ColorSelector(
        onShow: () {
          showModalBottomSheet(
              clipBehavior: Clip.hardEdge,
              context: context,
              builder: (BuildContext modalContext) {
                return ColorsModalView(
                  onTap: (color) {
                    context.read<DetailsCubit>().onChangeColor(color: color);
                    Navigator.of(modalContext).pop();
                  },
                );
              });
        },
        value: color,
      ),
    );
  }
}
