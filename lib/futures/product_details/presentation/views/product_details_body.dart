import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/cart/domain/entities/cart_product_entity.dart';
import 'package:auth_screen/futures/cart/presentation/%20blocs/cart_cubit.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:auth_screen/futures/product_details/presentation/common/add_to_cart_button.dart';
import 'package:auth_screen/futures/product_details/presentation/common/image_carousel.dart';
import 'package:auth_screen/futures/product_details/presentation/common/product_comment.dart';
import 'package:auth_screen/futures/product_details/presentation/common/product_description.dart';
import 'package:auth_screen/futures/product_details/presentation/common/product_name.dart';
import 'package:auth_screen/futures/product_details/presentation/common/reviews_title.dart';
import 'package:auth_screen/futures/product_details/presentation/common/shipping_policy.dart';
import 'package:auth_screen/futures/product_details/presentation/views/color_options_view.dart';
import 'package:auth_screen/futures/product_details/presentation/views/quantity_options_view.dart';
import 'package:auth_screen/futures/product_details/presentation/views/size_options_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsBody extends StatelessWidget {
  final String? size;
  final String? color;
  final ProductEntity product;

  const ProductDetailsBody(
      {super.key, required this.product, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      bloc: getIt.get<CartCubit>(),
      builder: (context, cartState) {
        final productInCart = cartState.maybeWhen(
            hasProducts: (List<CartProductEntity> value) {
              return value
                  .where(
                      (productInCart) => productInCart.product.id == product.id)
                  .firstOrNull;
            },
            orElse: () => null);

        return Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ImageCarousel(
                    images: [product.image, product.image],
                  ),
                  ProductName(
                    productName: product.title,
                    productPrice: product.price,
                  ),
                  ...productInCart == null
                      ? [
                          SizeOptionsView(
                            size: size,
                          ),
                          12.height,
                          ColorOptionsView(
                            color: color,
                          ),
                        ]
                      : [],
                  ...productInCart != null
                      ? [
                          QuantityOptionsView(
                            product: product,
                            quantity: productInCart.count,
                          ),
                        ]
                      : [],
                  24.height,
                  ProductDescription(
                    description: product.description,
                  ),
                  24.height,
                  const ShippingPolicy(),
                  24.height,
                  const ReviewsTitle(),
                  10.height,
                  const ProductComment(),
                  const ProductComment(),
                  const ProductComment(),
                  10.height,
                ],
              ),
            ),
            productInCart == null
                ? AddToCartButton(
                    disabled: (size == null || color == null),
                    onTap: () {
                      getIt.get<CartCubit>().onAddToCart(
                          product: product, size: size, color: color);
                    },
                  )
                : 0.height
          ],
        );
      },
    );
  }
}
