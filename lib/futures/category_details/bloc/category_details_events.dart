part of 'category_details_bloc.dart';

// class CategoryDetailsEvent {}

@freezed
class CategoryDetailsEvent with _$CategoryDetailsEvent {
  const factory CategoryDetailsEvent.loadProducts({required String model}) =
      LoadCategoryProducts;
}
