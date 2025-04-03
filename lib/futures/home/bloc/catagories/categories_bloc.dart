import 'package:auth_screen/futures/home/data/repository/category_repository.dart';
import 'package:auth_screen/futures/home/domain/entity/category_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoryRepository categoryRepository;

  CategoriesBloc({required this.categoryRepository})
      : super(CategoriesState()) {
    on<FetchCategories>((event, emit) async {
      try {
        List<CategoryEntity> categories =
            await categoryRepository.fetchCategories();
        emit(CategoriesState(categories: categories));
      } catch (_) {
        // print('eroorrr');
      }
    });
  }
}
