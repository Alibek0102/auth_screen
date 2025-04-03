part of 'products_bloc.dart';

class ProductsEvent {}

class FetchProducts extends ProductsEvent {
  String model;

  FetchProducts({required this.model});
}

class FetchMoreProducts extends ProductsEvent {
  String model;

  FetchMoreProducts({required this.model});
}
