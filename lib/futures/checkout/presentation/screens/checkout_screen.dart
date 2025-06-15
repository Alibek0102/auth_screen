import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/elements/universal_button.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/cart/presentation/%20blocs/cart_cubit.dart';
import 'package:auth_screen/futures/cart/presentation/common/checkout_info.dart';
import 'package:auth_screen/futures/checkout/presentation/blocs/address_bloc/address_cubit.dart';
import 'package:auth_screen/futures/checkout/presentation/blocs/payment_bloc/payment_cubit.dart';
import 'package:auth_screen/futures/checkout/presentation/common/checkout_section.dart';
import 'package:auth_screen/futures/checkout/presentation/common/enter_card_number_modal_view.dart';
import 'package:auth_screen/futures/checkout/presentation/common/select_delivery_address_modal_view.dart';
import 'package:auth_screen/futures/orders/presentation/blocs/orders_bloc/orders_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<AddressCubit>()),
        BlocProvider(create: (_) => getIt.get<PaymentCubit>()),
        BlocProvider(create: (_) => getIt.get<OrdersCubit>())
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                        BlocBuilder<AddressCubit, AddressState>(
                          builder: (context, addressState) {
                            return CheckoutSection(
                              sectionTitle: 'Shipping Address',
                              loader: addressState.maybeWhen(
                                  loader: () => true, orElse: () => false),
                              sectionValue: addressState.whenOrNull(
                                selectedAddress: (address) =>
                                    address.displayName,
                              ),
                              onTap: () {
                                addressState.maybeWhen(loader: () {
                                  return;
                                }, orElse: () {
                                  showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      clipBehavior: Clip.hardEdge,
                                      builder: (BuildContext modalContext) {
                                        return SelectDeliveryAddressModalView(
                                          onAddressTap: () {
                                            Navigator.of(context).pop();
                                            context
                                                .read<AddressCubit>()
                                                .onMyLocationPress();
                                          },
                                          onConfirm: ({required address}) {
                                            Navigator.of(context).pop();
                                            context
                                                .read<AddressCubit>()
                                                .onSetEnteredAddress(
                                                    address: address);
                                          },
                                        );
                                      });
                                });
                              },
                            );
                          },
                        ),
                        8.height,
                        BlocBuilder<PaymentCubit, PaymentState>(
                          builder: (context, paymentState) {
                            return CheckoutSection(
                              sectionTitle: 'Payment Method',
                              sectionValue: paymentState.whenOrNull(
                                selectedCard: (_, maskedCardNumber) =>
                                    maskedCardNumber,
                              ),
                              onTap: () {
                                showModalBottomSheet(
                                    clipBehavior: Clip.hardEdge,
                                    context: context,
                                    builder: (BuildContext modalContext) {
                                      return EnterCardNumberModalView(
                                        paymentCubit:
                                            context.read<PaymentCubit>(),
                                      );
                                    });
                              },
                            );
                          },
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
                  BlocConsumer<OrdersCubit, OrdersState>(
                    listener: (BuildContext context, OrdersState state) {
                      state.whenOrNull(
                        success: () {
                          getIt.get<CartCubit>().reset();
                          context.router.replaceNamed('/success-order');
                        },
                      );
                    },
                    builder: (context, orderState) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: UniversalButton(
                              onTap: () {
                                state.whenOrNull(
                                  hasProducts: (cartProducts) {
                                    final address = context
                                        .read<AddressCubit>()
                                        .state
                                        .whenOrNull(
                                          selectedAddress: (address) => address,
                                        );

                                    final cardNumber = context
                                        .read<PaymentCubit>()
                                        .state
                                        .whenOrNull(
                                          selectedCard: (cardNumber, _) =>
                                              cardNumber,
                                        );

                                    if (address == null || cardNumber == null)
                                      return;

                                    context.read<OrdersCubit>().createOrder(
                                        shippingAddress: address.displayName,
                                        cardNumber: cardNumber,
                                        products: cartProducts);
                                  },
                                );
                              },
                              child: orderState.maybeWhen(
                                loader: () => const Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2.0,
                                    ),
                                  ),
                                ),
                                orElse: () {
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                  );
                                },
                              )));
                    },
                  ),
                  34.height
                ],
              );
            }, orElse: () {
              return const Text('data');
            });
          },
        ),
      ),
    );
  }
}
