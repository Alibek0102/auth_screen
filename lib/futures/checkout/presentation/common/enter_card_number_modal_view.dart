import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/checkout/presentation/blocs/payment_bloc/payment_cubit.dart';
import 'package:auth_screen/futures/checkout/presentation/common/checkout_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterCardNumberModalView extends StatelessWidget {
  final TextEditingController cardNumberController = TextEditingController();
  final PaymentCubit paymentCubit;

  EnterCardNumberModalView({super.key, required this.paymentCubit});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: paymentCubit,
      child: BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {
          state.whenOrNull(
            selectedCard: (_, state) async {
              Navigator.of(context).pop();
            },
          );
        },
        builder: (context, state) {
          return SizedBox(
            height: 230,
            width: double.infinity,
            child: ColoredBox(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Укажите номер карты',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    12.height,
                    CheckoutTextfield(
                      controller: cardNumberController,
                      placeholder: 'Номер карты',
                      keyboardType: TextInputType.number,
                      maxLength: 16,
                      errorMessage: state.whenOrNull(
                        error: (exception) => exception.message,
                      ),
                    ),
                    12.height,
                    const Spacer(),
                    CustomButton(
                        buttonText: "Подтвердить",
                        loginPress: () {
                          context
                              .read<PaymentCubit>()
                              .onConfirmPaymentCardNumber(
                                  cardNumber: cardNumberController.text);
                        })
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
