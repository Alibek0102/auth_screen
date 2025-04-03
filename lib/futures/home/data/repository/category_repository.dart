import 'package:auth_screen/futures/home/domain/entity/category_entity.dart';

abstract class CategoryRepository {
  Future<List<CategoryEntity>> fetchCategories();
}
