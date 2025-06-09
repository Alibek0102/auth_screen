import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
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

@RoutePage()
class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          goBack: () {
            context.router.back();
          },
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  const ImageCarousel(),
                  const ProductName(),
                  OptionsContainer(
                    containerKey: 'Size',
                    containerChild: SizeSelector(
                      onShow: () {
                        showModalBottomSheet(
                            clipBehavior: Clip.hardEdge,
                            context: context,
                            builder: (BuildContext context) {
                              return const SizesModalView();
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
                    ),
                  ),
                  12.height,
                  const OptionsContainer(
                    containerKey: 'Quantity',
                    containerChild: QuantityStepper(),
                  ),
                  24.height,
                  const ProductDescription(),
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
            const AddToCartButton()
          ],
        ));
  }
}
