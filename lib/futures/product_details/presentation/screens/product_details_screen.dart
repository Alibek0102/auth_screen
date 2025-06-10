import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/cart/domain/entities/cart_product_entity.dart';
import 'package:auth_screen/futures/cart/presentation/%20blocs/cart_cubit.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:auth_screen/futures/product_details/presentation/blocs/details_cubit.dart';
import 'package:auth_screen/futures/product_details/presentation/common/add_to_cart_button.dart';
import 'package:auth_screen/futures/product_details/presentation/common/color_selector.dart';
import 'package:auth_screen/futures/product_details/presentation/common/colors_modal_view.dart';
import 'package:auth_screen/futures/product_details/presentation/common/image_carousel.dart';
import 'package:auth_screen/futures/product_details/presentation/common/options_container.dart';
import 'package:auth_screen/futures/product_details/presentation/common/product_comment.dart';
import 'package:auth_screen/futures/product_details/presentation/common/product_description.dart';
import 'package:auth_screen/futures/product_details/presentation/common/product_name.dart';
import 'package:auth_screen/futures/product_details/presentation/common/quantity_stepper.dart';
import 'package:auth_screen/futures/product_details/presentation/common/reviews_title.dart';
import 'package:auth_screen/futures/product_details/presentation/common/shipping_policy.dart';
import 'package:auth_screen/futures/product_details/presentation/common/size_selector.dart';
import 'package:auth_screen/futures/product_details/presentation/common/sizes_modal_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProductDetailsScreen extends StatelessWidget {
  final ProductEntity product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          goBack: () {
            context.router.back();
          },
        ),
        body: BlocBuilder<CartCubit, CartState>(
          bloc: getIt.get<CartCubit>(),
          builder: (context, cartState) {
            final productInCart = cartState.maybeWhen(
                hasProducts: (List<CartProductEntity> value) {
                  return value
                      .where((productInCart) =>
                          productInCart.product.id == product.id)
                      .firstOrNull;
                },
                orElse: () => null);

            return Column(
              children: [
                BlocBuilder<DetailsCubit, DetailsState>(
                  bloc: getIt.get<DetailsCubit>(),
                  builder: (context, detailsState) {
                    return Expanded(
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
                                  OptionsContainer(
                                    containerKey: 'Size',
                                    containerChild: SizeSelector(
                                      value: 'M',
                                      onShow: () {
                                        showModalBottomSheet(
                                            clipBehavior: Clip.hardEdge,
                                            context: context,
                                            builder: (BuildContext context) {
                                              return SizesModalView(
                                                onTap: (value) {
                                                  // getIt
                                                  //     .get<ProductDetailsCubit>()
                                                  //     .changeSize(size: value);
                                                },
                                              );
                                            });
                                      },
                                    ),
                                  ),
                                  12.height,
                                  OptionsContainer(
                                    containerKey: 'Color',
                                    containerChild: ColorSelector(
                                      onShow: () {
                                        showModalBottomSheet(
                                            clipBehavior: Clip.hardEdge,
                                            context: context,
                                            builder: (BuildContext context) {
                                              return const ColorsModalView();
                                            });
                                      },
                                      value: '#ffffff',
                                    ),
                                  ),
                                ]
                              : [],
                          ...productInCart != null
                              ? [
                                  OptionsContainer(
                                    containerKey: 'Quantity',
                                    containerChild: QuantityStepper(
                                        onPlusTap: () {
                                          getIt
                                              .get<CartCubit>()
                                              .increment(product: product);
                                        },
                                        onMinusTap: () {
                                          getIt
                                              .get<CartCubit>()
                                              .decrement(product: product);
                                        },
                                        quantity: productInCart.count),
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
                    );
                  },
                ),
                productInCart == null
                    ? AddToCartButton(
                        onTap: () {
                          getIt.get<CartCubit>().increment(product: product);
                        },
                      )
                    : 0.height
              ],
            );
          },
        ));
  }
}
