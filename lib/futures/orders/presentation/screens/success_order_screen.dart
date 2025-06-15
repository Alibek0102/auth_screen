import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class SuccessOrderScreen extends StatelessWidget {
  const SuccessOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryViolet,
        body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Expanded(
                    child: Center(
                  child: Lottie.asset('assets/lotties/succes_order.json',
                      fit: BoxFit.contain),
                )),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.2,
                  width: MediaQuery.of(context).size.width,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(16.0),
                            right: Radius.circular(16.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 40),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Order Placed\nSuccessfully',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          25.height,
                          Text(
                            'You will recieve an email confirmation',
                            style: TextStyle(
                                fontSize: 16.0, color: AppColors.textSilver),
                          ),
                          const Spacer(),
                          CustomButton(
                              buttonText: 'See Order details',
                              loginPress: () {
                                context.router.replaceAll([
                                  const TabNavigationRoute(
                                      children: [OrdersRoute()])
                                ]);
                              }),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
