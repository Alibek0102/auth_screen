import 'package:auth_screen/futures/cart/domain/entities/cart_product_entity.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState.empty());

  void onAddToCart(
      {required ProductEntity product, String? size, String? color}) {
    if (state is _CartEmptyState) {
      final newCartProduct = CartProductEntity(
          count: 1, product: product, color: color, size: size);
      emit(CartState.hasProducts(cartProducts: [newCartProduct]));
    } else if (state is _CartHasProducts) {
      final indexOfCartProduct = (state as _CartHasProducts)
          .cartProducts
          .indexWhere(
              (CartProductEntity item) => item.product.id == product.id);
      if (indexOfCartProduct == -1) {
        final newCartProduct = CartProductEntity(
            count: 1, product: product, color: color, size: size);
        emit(CartState.hasProducts(cartProducts: [
          ...(state as _CartHasProducts).cartProducts,
          newCartProduct
        ]));
      }
    }
  }

  void increment({required ProductEntity product}) {
    if (state is _CartHasProducts) {
      final indexOfCartProduct = (state as _CartHasProducts)
          .cartProducts
          .indexWhere(
              (CartProductEntity item) => item.product.id == product.id);

      if (indexOfCartProduct != -1) {
        emit(CartState.hasProducts(cartProducts: [
          ...(state as _CartHasProducts)
              .cartProducts
              .map((CartProductEntity cartItem) {
            if (cartItem.product.id == product.id) {
              return cartItem.copyWith(count: cartItem.count + 1);
            }
            return cartItem;
          })
        ]));
      }
    }
  }

  void decrement({required ProductEntity product}) {
    if (state is _CartHasProducts) {
      final findedProduct = (state as _CartHasProducts)
          .cartProducts
          .firstWhere((cardProduct) => cardProduct.product.id == product.id);

      if (findedProduct.count > 1) {
        emit(CartState.hasProducts(cartProducts: [
          ...(state as _CartHasProducts)
              .cartProducts
              .map((CartProductEntity cartItem) {
            if (cartItem.product.id == product.id) {
              final selectedCartItem = cartItem;
              return CartProductEntity(
                  count: selectedCartItem.count - 1, product: product);
            }
            return cartItem;
          })
        ]));
      } else {
        final currentState = (state as _CartHasProducts);

        if (currentState.cartProducts.length > 1) {
          emit(CartState.hasProducts(cartProducts: [
            ...currentState.cartProducts
                .where((cartProduct) => cartProduct.product.id != product.id)
          ]));
        } else {
          emit(const CartState.empty());
        }
      }
    }
  }

  void reset() {
    emit(const CartState.empty());
  }
}
