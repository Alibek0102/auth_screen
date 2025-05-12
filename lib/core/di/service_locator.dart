import 'package:auth_screen/core/dio_client.dart';
import 'package:auth_screen/futures/home/bloc/catagories/categories_bloc.dart';
import 'package:auth_screen/futures/home/bloc/products/products_bloc.dart';
import 'package:auth_screen/futures/home/domain/repository/category_repository_impl.dart';
import 'package:auth_screen/futures/home/domain/repository/products_repository_impl.dart';
import 'package:auth_screen/futures/profile/bloc/profile_bloc.dart';
import 'package:auth_screen/futures/profile/domain/repository/user_repository_impl.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  // clients
  getIt.registerSingleton(DioClient());

  // repositories
  getIt.registerFactory(
      () => UserRepositoryImpl(client: getIt.get<DioClient>().instance));
  getIt.registerFactory(
      () => CategoryRepositoryImpl(client: getIt.get<DioClient>().instance));
  getIt.registerFactory(
      () => ProductsRepositoryImpl(client: getIt.get<DioClient>().instance));

  // blocs
  getIt.registerLazySingleton(
      () => ProfileBloc(userRepository: getIt.get<UserRepositoryImpl>()));
  getIt.registerLazySingleton(() =>
      CategoriesBloc(categoryRepository: getIt.get<CategoryRepositoryImpl>()));
  getIt.registerFactory(() =>
      ProductsBloc(productsRepository: getIt.get<ProductsRepositoryImpl>()));
}
