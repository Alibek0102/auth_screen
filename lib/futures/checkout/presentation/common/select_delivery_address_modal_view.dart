import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/futures/checkout/presentation/common/checkout_textfield.dart';
import 'package:auth_screen/futures/checkout/presentation/common/location_button.dart';
import 'package:flutter/material.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';

class SelectDeliveryAddressModalView extends StatelessWidget {
  final VoidCallback? onAddressTap;
  final Function({required String address})? onConfirm;

  final TextEditingController addressController = TextEditingController();

  SelectDeliveryAddressModalView(
      {super.key, this.onAddressTap, this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Укажите адрес доставки',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              12.height,
              CheckoutTextfield(
                controller: addressController,
                placeholder: 'Адрес доставки',
              ),
              12.height,
              LocationButton(
                onTap: onAddressTap,
              ),
              const Spacer(),
              CustomButton(
                  buttonText: "Подтвердить",
                  loginPress: () {
                    if (onConfirm == null) return;
                    onConfirm!(address: addressController.text);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
