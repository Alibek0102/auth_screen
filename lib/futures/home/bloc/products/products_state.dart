part of 'products_bloc.dart';

enum Status { initial, success, error }

class ProductsState {
  final Status status;
  final List<ProductEntity> products;
  final bool hasReachedMax;
  final int page;
  final bool nextPageLoader;

  ProductsState(
      {this.status = Status.initial,
      this.products = const [],
      this.hasReachedMax = false,
      this.page = 1,
      this.nextPageLoader = false});

  ProductsState copyWith(
      {Status? status,
      List<ProductEntity>? products,
      bool? hasReachedMax,
      int? page,
      bool? nextPageLoader}) {
    return ProductsState(
        status: status ?? this.status,
        products: products ?? this.products,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
        page: page ?? this.page,
        nextPageLoader: nextPageLoader ?? this.nextPageLoader);
  }
}
