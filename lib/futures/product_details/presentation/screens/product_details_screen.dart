import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/product_details/presentation/common/image_carousel.dart';
import 'package:auth_screen/futures/product_details/presentation/common/options_container.dart';
import 'package:auth_screen/futures/product_details/presentation/common/product_name.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          goBack: () {},
        ),
        body: ListView(
          children: [
            const ImageCarousel(),
            const ProductName(),
            OptionsContainer(
              containerKey: 'Size',
              containerChild: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'S',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  29.width,
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/images/chevron_down.svg'),
                  )
                ],
              ),
            ),
            12.height,
            OptionsContainer(
              containerKey: 'Color',
              containerChild: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                      width: 16,
                      height: 16,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(16 / 2)))),
                  29.width,
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/images/chevron_down.svg'),
                  )
                ],
              ),
            ),
            12.height,
            OptionsContainer(
              containerKey: 'Quantity',
              containerChild: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                        style: IconButton.styleFrom(
                            backgroundColor: AppColors.primaryViolet),
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/images/Plus.svg')),
                  ),
                  23.width,
                  const Text(
                    '1',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  23.width,
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                        style: IconButton.styleFrom(
                            backgroundColor: AppColors.primaryViolet),
                        color: Colors.red,
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/images/Minus.svg')),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
                style:
                    TextStyle(fontSize: 12.0, color: AppColors.primarySilver),
              ),
            )
          ],
        ));
  }
}
