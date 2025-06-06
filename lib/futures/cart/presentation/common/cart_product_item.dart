import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/cart/domain/entities/cart_product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartProductItem extends StatelessWidget {
  final CartProductEntity cartProduct;
  final VoidCallback onPlus;
  final VoidCallback onMinus;

  const CartProductItem(
      {super.key,
      required this.cartProduct,
      required this.onMinus,
      required this.onPlus});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: AppColors.lightSilver,
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: 64,
                child: Image.network(cartProduct.product.image),
              ),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartProduct.product.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Size',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textSilver)),
                          const TextSpan(
                              text: ' - M',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))
                        ])),
                        16.width,
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Color',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textSilver)),
                          const TextSpan(
                              text: ' - Black',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))
                        ])),
                      ],
                    )
                  ],
                ),
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${cartProduct.priceByCount}',
                    style: const TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: IconButton(
                            style: IconButton.styleFrom(
                                backgroundColor: AppColors.primaryViolet),
                            onPressed: onMinus,
                            icon: SvgPicture.asset('assets/images/Minus.svg')),
                      ),
                      8.width,
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: IconButton(
                            style: IconButton.styleFrom(
                                backgroundColor: AppColors.primaryViolet),
                            onPressed: onPlus,
                            icon: SvgPicture.asset('assets/images/Plus.svg')),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
