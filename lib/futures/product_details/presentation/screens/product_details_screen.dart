import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:auth_screen/futures/product_details/presentation/blocs/details_cubit.dart';
import 'package:auth_screen/futures/product_details/presentation/views/product_details_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProductDetailsScreen extends StatelessWidget {
  final ProductEntity product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<DetailsCubit>(),
      child: ProductDetailsView(product: product),
    );
  }
}
