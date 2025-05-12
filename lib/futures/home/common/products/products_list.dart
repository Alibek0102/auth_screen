import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/home/bloc/products/products_bloc.dart';
import 'package:auth_screen/futures/home/common/list_header.dart';
import 'package:auth_screen/futures/home/common/products/product_item.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsList extends StatelessWidget {
  final String categoryTitle;

  const ProductsList({super.key, required this.categoryTitle});

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
            ),
          ),
        ],
      ),
    );
  }
}

class Products extends StatefulWidget {
  final String model;

  const Products({super.key, required this.model});

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
        if (state.products.isEmpty) {
          return const Text('no data');
        }
        return ListView.builder(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemCount: state.products.length,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: SizedBox(
                  width: 159,
                  child: ProductItem(
                    productEntity: state.products[index],
                  ),
                ),
              );
            });
      },
    );
  }
}
