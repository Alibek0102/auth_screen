import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/elements/universal_button.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/cart/presentation/%20blocs/cart_cubit.dart';
import 'package:auth_screen/futures/cart/presentation/common/checkout_info.dart';
import 'package:auth_screen/futures/checkout/presentation/common/checkout_section.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        headerTitle: 'Checkout',
        goBack: () {
          context.router.back();
        },
      ),
      body: BlocBuilder<CartCubit, CartState>(
        bloc: getIt.get<CartCubit>(),
        builder: (context, state) {
          return state.maybeMap(hasProducts: (cartInstance) {
            return Column(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      CheckoutSection(
                        sectionTitle: 'Shipping Address',
                        sectionValue:
                            '2715 Ash Dr. San Jose, South Dakota 83475',
                      ),
                      8.height,
                      CheckoutSection(
                        sectionTitle: 'Payment Method',
                        sectionValue: '**** 4187',
                      )
                    ],
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: CheckoutInfo(
                    subtotalValue: cartInstance.subtotalPrice ?? 0,
                    shippingCostValue: cartInstance.totalShippingCost ?? 0,
                    totalPrice: cartInstance.totalPrice ?? 0,
                  ),
                ),
                89.height,
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: UniversalButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${cartInstance.totalPrice}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          const Text(
                            'Place Order',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          )
                        ],
                      ),
                    )),
                34.height
              ],
            );
          }, orElse: () {
            return Text('data');
          });
        },
      ),
    );
  }
}
