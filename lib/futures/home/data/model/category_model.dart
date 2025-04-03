import 'package:auth_screen/futures/home/domain/entity/category_entity.dart';

class CategoryModel extends CategoryEntity {
  CategoryModel({required super.category});

  CategoryModel.fromJson({required String name}) : super(category: name);
}
