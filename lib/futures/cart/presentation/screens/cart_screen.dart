import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/cart/presentation/common/cart_product_item.dart';
import 'package:auth_screen/futures/cart/presentation/common/checkout_info.dart';
import 'package:auth_screen/futures/cart/presentation/common/coupon_code_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 5.0),
                child: const Text(
                  'Remove All',
                  style: const TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    padding: const EdgeInsets.only(top: 16.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24.0, bottom: 8.0),
                        child: CartProductItem(),
                      );
                    }),
              )
            ],
          )),
          8.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CheckoutInfo(),
          ),
          31.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CouponCodeField(),
          ),
          54.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomButton(buttonText: 'Checkout', loginPress: () {}),
          ),
          34.height,
        ],
      ),
    );
  }
}
