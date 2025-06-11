import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/futures/cart/presentation/%20blocs/cart_cubit.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:auth_screen/futures/product_details/presentation/common/options_container.dart';
import 'package:auth_screen/futures/product_details/presentation/common/quantity_stepper.dart';
import 'package:flutter/material.dart';

class QuantityOptionsView extends StatelessWidget {
  final ProductEntity product;
  final int? quantity;

  const QuantityOptionsView({super.key, required this.product, this.quantity});

  @override
  Widget build(BuildContext context) {
    return OptionsContainer(
      containerKey: 'Quantity',
      containerChild: QuantityStepper(
          onPlusTap: () {
            getIt.get<CartCubit>().increment(product: product);
          },
          onMinusTap: () {
            getIt.get<CartCubit>().decrement(product: product);
          },
          quantity: quantity ?? 0),
    );
  }
}
