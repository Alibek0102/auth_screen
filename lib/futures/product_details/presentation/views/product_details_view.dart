import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:auth_screen/futures/product_details/presentation/blocs/details_cubit.dart';
import 'package:auth_screen/futures/product_details/presentation/views/product_details_body.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        return Scaffold(
            appBar: CustomAppBar(
              goBack: () {
                context.router.back();
              },
            ),
            body: ProductDetailsBody(
              product: product,
              size: state.size,
              color: state.color,
            ));
      },
    );
  }
}
