import 'package:auth_screen/futures/home/data/repository/products_repository.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsRepository productsRepository;

  ProductsBloc({required this.productsRepository}) : super(ProductsState()) {
    on<FetchProducts>((event, emit) async {
      try {
        List<ProductEntity> products =
            await productsRepository.getProducts(model: event.model, page: 1);
        emit(state.copyWith(products: products));
      } catch (error) {
        print('${event.model} products failed');
      }
    });

    on<FetchMoreProducts>((event, emit) {});
  }
}
