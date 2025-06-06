import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/cart/presentation/%20blocs/cart_cubit.dart';
import 'package:auth_screen/futures/cart/presentation/common/cart_product_item.dart';
import 'package:auth_screen/futures/cart/presentation/common/checkout_info.dart';
import 'package:auth_screen/futures/cart/presentation/common/coupon_code_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        headerTitle: 'Cart',
        goBack: () {
          context.router.back();
        },
      ),
      body: BlocConsumer<CartCubit, CartState>(
          bloc: getIt.get<CartCubit>(),
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
                hasProducts: (cartInstance) {
                  return Column(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24.0, vertical: 5.0),
                            child: InkWell(
                              onTap: () {
                                getIt.get<CartCubit>().reset();
                              },
                              child: const Text(
                                'Remove All',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: cartInstance.cartProducts.length,
                                padding: const EdgeInsets.only(top: 16.0),
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 24.0, right: 24.0, bottom: 8.0),
                                    child: CartProductItem(
                                      cartProduct:
                                          cartInstance.cartProducts[index],
                                      onPlus: () {
                                        getIt.get<CartCubit>().increment(
                                            product: cartInstance
                                                .cartProducts[index].product);
                                      },
                                      onMinus: () {
                                        getIt.get<CartCubit>().decrement(
                                            product: cartInstance
                                                .cartProducts[index].product);
                                      },
                                    ),
                                  );
                                }),
                          )
                        ],
                      )),
                      8.height,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: CheckoutInfo(
                          subtotalValue: cartInstance.subtotalPrice ?? 0,
                          shippingCostValue:
                              cartInstance.totalShippingCost ?? 0,
                          totalPrice: cartInstance.totalPrice ?? 0,
                        ),
                      ),
                      31.height,
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: CouponCodeField(),
                      ),
                      54.height,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: CustomButton(
                            buttonText: 'Checkout', loginPress: () {}),
                      ),
                      34.height,
                    ],
                  );
                },
                orElse: () => Expanded(
                        child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Lottie.asset('assets/lotties/EmptyCart.json',
                              width: 250, height: 250),
                          27.height,
                          const Text(
                            'Your Cart is Empty',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          27.height,
                          SizedBox(
                            width: 220.0,
                            child: CustomButton(
                                buttonText: 'Explore Categories',
                                loginPress: () {
                                  context.router.back();
                                }),
                          )
                        ],
                      ),
                    )));
          }),
    );
  }
}
