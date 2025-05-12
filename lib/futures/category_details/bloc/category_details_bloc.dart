import 'package:auth_screen/futures/home/data/repository/products_repository.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_details_bloc.freezed.dart';

part 'category_details_events.dart';
part 'category_details_states.dart';

class CategoryDetailsBloc
    extends Bloc<CategoryDetailsEvent, CategoryDetailsState> {
  final ProductsRepository productsRepository;

  CategoryDetailsBloc({required this.productsRepository})
      : super(const CategoryDetailsState.initial()) {
    on<LoadCategoryProducts>((event, emit) async {
      emit(const CategoryDetailsState.loader());

      final String model = event.model;

      try {
        List<ProductEntity> products =
            await productsRepository.getProducts(model: model, page: 1);
        emit(CategoryDetailsState.loaded(products: products));
      } catch (error) {
        emit(const CategoryDetailsState.error());
      }
    });
  }
}
