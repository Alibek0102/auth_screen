import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/home/bloc/products/products_bloc.dart';
import 'package:auth_screen/futures/home/common/list_header.dart';
import 'package:auth_screen/futures/home/common/products/product_item.dart';
import 'package:auth_screen/futures/home/common/products/products_shimmer_item.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsList extends StatelessWidget {
  final String categoryTitle;
  final Function({required ProductEntity product})? onShowDetails;

  const ProductsList(
      {super.key, required this.categoryTitle, this.onShowDetails});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<ProductsBloc>(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          24.height,
          ListHeader(
            headerTitle: categoryTitle,
            onShow: () {
              context.router.push(CategoryDetailsRoute(model: categoryTitle));
            },
          ),
          16.height,
          SizedBox(
            height: 281,
            child: Products(
              model: categoryTitle,
              onShowDetails: onShowDetails,
            ),
          ),
        ],
      ),
    );
  }
}

class Products extends StatefulWidget {
  final String model;
  final Function({required ProductEntity product})? onShowDetails;

  const Products({super.key, required this.model, this.onShowDetails});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onEnd);
    BlocProvider.of<ProductsBloc>(context)
        .add(FetchProducts(model: widget.model));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onEnd() {
    if (_controller.position.pixels + 100 ==
        _controller.position.maxScrollExtent) {
      print('end');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        final products = state.products;

        if (products.isEmpty) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: ProductsShimmerItem(),
                );
              });
        }
        return ListView.builder(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: SizedBox(
                  width: 159,
                  child: ProductItem(
                    productEntity: products[index],
                    availableInCart: false,
                    onTapCard: () {
                      if (widget.onShowDetails != null) {
                        widget.onShowDetails!(product: products[index]);
                      }
                    },
                    onAddToCart: () {
                      // getIt
                      //     .get<CartCubit>()
                      //     .increment(product: products[index]);
                    },
                  ),
                ),
              );
            });
      },
    );
  }
}
