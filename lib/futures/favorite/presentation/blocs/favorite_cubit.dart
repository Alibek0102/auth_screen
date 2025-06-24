import 'package:auth_screen/futures/favorite/domain/use_case/add_favorite_product.dart';
import 'package:auth_screen/futures/favorite/domain/use_case/delete_favorite_product.dart';
import 'package:auth_screen/futures/favorite/domain/use_case/get_favorite_products.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final GetFavoriteProducts getFavoriteProducts;
  final AddFavoriteProduct addFavoriteProduct;
  final DeleteFavoriteProduct deleteFavoriteProduct;

  FavoriteCubit(
      {required this.getFavoriteProducts,
      required this.addFavoriteProduct,
      required this.deleteFavoriteProduct})
      : super(const FavoriteState());

  void loadFavoriteProducts() {
    try {
      List<ProductEntity> products = getFavoriteProducts.perform();
      emit(state.copyWith(products: products));
    } catch (_) {
      //ошибка игнориуется
    }
  }

  void appendFavoriteProduct({required ProductEntity product}) async {
    final checkInList = state.products
        .indexWhere((stateProduct) => stateProduct.id == product.id);

    if (checkInList != -1) {
      try {
        emit(state.copyWith(products: [
          ...state.products
              .where((stateProduct) => stateProduct.id != product.id)
        ]));
        await deleteFavoriteProduct.perform(productId: product.id);
      } catch (_) {
        // ошибка игнорируется
      }
    } else {
      emit(state.copyWith(products: [...state.products, product]));
      await addFavoriteProduct.perform(favoriteProduct: product);
    }
  }
}
