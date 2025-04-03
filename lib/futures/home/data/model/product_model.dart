import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel(
      {required super.id,
      required super.title,
      required super.image,
      required super.price,
      required super.discount});

  ProductModel.fromJson(Map<String, dynamic> json)
      : super(
            id: json['id'],
            title: json['title'],
            image: json['image'],
            price: json['price'],
            discount: json['discount']);
}
