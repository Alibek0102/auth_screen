import 'package:auth_screen/futures/product_details/presentation/blocs/details_cubit.dart';
import 'package:auth_screen/futures/product_details/presentation/common/options_container.dart';
import 'package:auth_screen/futures/product_details/presentation/common/size_selector.dart';
import 'package:auth_screen/futures/product_details/presentation/common/sizes_modal_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SizeOptionsView extends StatelessWidget {
  final String? size;

  const SizeOptionsView({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return OptionsContainer(
      containerKey: 'Size',
      containerChild: SizeSelector(
        value: size,
        onShow: () {
          showModalBottomSheet(
              clipBehavior: Clip.hardEdge,
              context: context,
              builder: (BuildContext modalContext) {
                return SizesModalView(
                  onTap: (value) {
                    context.read<DetailsCubit>().onChangeSize(size: value);
                    Navigator.of(modalContext).pop();
                  },
                );
              });
        },
      ),
    );
  }
}
