import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_state.dart';
part 'product_details_cubit.freezed.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit() : super(const ProductDetailsState());

  void changeColor({required String color}) {
    emit(state.copyWith(color: color));
  }

  void changeSize({required String size}) {
    print('change size');
    emit(state.copyWith(size: size));
  }
}
