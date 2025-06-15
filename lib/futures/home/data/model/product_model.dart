import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:hive/hive.dart';

part 'product_model.g.dart';

@HiveType(typeId: 1)
class ProductModel {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String image;

  @HiveField(3)
  final int price;

  @HiveField(4)
  final int? discount;

  @HiveField(5)
  final String description;

  ProductModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.price,
      this.discount,
      required this.description});

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      price: json['price'],
      discount: json['discount'],
      description: json['description']);

  factory ProductModel.fromEntity(ProductEntity entity) => ProductModel(
      id: entity.id,
      title: entity.title,
      image: entity.image,
      price: entity.price,
      description: entity.description);

  ProductEntity toEntity() => ProductEntity(
        id: id,
        title: title,
        image: image,
        price: price,
        discount: discount,
        description: description,
      );
}
