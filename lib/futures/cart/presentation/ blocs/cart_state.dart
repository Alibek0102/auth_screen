part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const CartState._();

  const factory CartState.empty() = _CartEmptyState;
  const factory CartState.hasProducts(
      {required List<CartProductEntity> cartProducts}) = _CartHasProducts;

  double? get subtotalPrice => whenOrNull(
        hasProducts: (cartProducts) {
          return cartProducts.fold<double>(
              0.0,
              (totalValue, cartProduct) =>
                  totalValue + cartProduct.priceByCount);
        },
      );

  // 8 тг за каждое кол-во
  double? get totalShippingCost => whenOrNull(
        hasProducts: (cartProducts) {
          return cartProducts.fold<double>(
              0.0,
              (totalValue, cartProduct) =>
                  totalValue + (cartProduct.count * 8));
        },
      );

  double? get totalPrice => whenOrNull(
      hasProducts: (_) => (subtotalPrice ?? 0) + (totalShippingCost ?? 0));
}
