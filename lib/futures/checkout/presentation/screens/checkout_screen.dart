import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/elements/universal_button.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/cart/presentation/%20blocs/cart_cubit.dart';
import 'package:auth_screen/futures/cart/presentation/common/checkout_info.dart';
import 'package:auth_screen/futures/checkout/presentation/blocs/address_bloc/address_cubit.dart';
import 'package:auth_screen/futures/checkout/presentation/common/checkout_section.dart';
import 'package:auth_screen/futures/checkout/presentation/common/select_delivery_address_modal_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt.get<AddressCubit>())],
      child: Scaffold(
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
                  BlocConsumer<AddressCubit, AddressState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          children: [
                            CheckoutSection(
                              sectionTitle: 'Shipping Address',
                              loader: state.maybeWhen(
                                  loader: () => true, orElse: () => false),
                              sectionValue: state.whenOrNull(
                                selectedAddress: (address) =>
                                    address.displayName,
                              ),
                              onTap: () {
                                state.maybeWhen(loader: () {
                                  return;
                                }, orElse: () {
                                  showModalBottomSheet(
                                      context: context,
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
                            ),
                            8.height,
                            CheckoutSection(
                              sectionTitle: 'Payment Method',
                              sectionValue: '**** 4187',
                            )
                          ],
                        ),
                      ));
                    },
                  ),
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
      ),
    );
  }
}
