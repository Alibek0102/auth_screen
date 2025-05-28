import 'package:auth_screen/core/dio_client.dart';
import 'package:auth_screen/futures/authentification/login/presentation/blocs/login_cubit.dart';
import 'package:auth_screen/futures/category_details/bloc/category_details_bloc.dart';
import 'package:auth_screen/futures/home/bloc/catagories/categories_bloc.dart';
import 'package:auth_screen/futures/home/bloc/products/products_bloc.dart';
import 'package:auth_screen/futures/home/domain/repository/category_repository_impl.dart';
import 'package:auth_screen/futures/home/domain/repository/products_repository_impl.dart';
import 'package:auth_screen/futures/profile/bloc/profile_bloc.dart';
import 'package:auth_screen/futures/profile/domain/repository/user_repository_impl.dart';
import 'package:auth_screen/futures/splash_screen/data/datasources/token_datasource.dart';
import 'package:auth_screen/futures/splash_screen/data/repositories/token_repository_impl.dart';
import 'package:auth_screen/futures/splash_screen/domain/use_cases/get_token.dart';
import 'package:auth_screen/futures/splash_screen/domain/use_cases/save_token.dart';
import 'package:auth_screen/futures/splash_screen/presentation/blocs/splash_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // clients
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  getIt.registerSingleton(DioClient());

  // datasources
  getIt.registerFactory(() =>
      TokenDatasource(sharedPreferencesClient: getIt.get<SharedPreferences>()));

  // repositories
  getIt.registerFactory(
      () => TokenRepositoryImpl(tokenDatasource: getIt.get<TokenDatasource>()));

  getIt.registerFactory(
      () => UserRepositoryImpl(client: getIt.get<DioClient>().instance));
  getIt.registerFactory(
      () => CategoryRepositoryImpl(client: getIt.get<DioClient>().instance));
  getIt.registerFactory(
      () => ProductsRepositoryImpl(client: getIt.get<DioClient>().instance));

  // use cases
  getIt.registerFactory(
      () => GetToken(tokenRepository: getIt.get<TokenRepositoryImpl>()));
  getIt.registerFactory(
      () => SaveToken(tokenRepository: getIt.get<TokenRepositoryImpl>()));

  // blocs
  getIt.registerLazySingleton(
      () => ProfileBloc(userRepository: getIt.get<UserRepositoryImpl>()));
  getIt.registerLazySingleton(() =>
      CategoriesBloc(categoryRepository: getIt.get<CategoryRepositoryImpl>()));
  getIt.registerFactory(() =>
      ProductsBloc(productsRepository: getIt.get<ProductsRepositoryImpl>()));
  getIt.registerFactory(() => CategoryDetailsBloc(
      productsRepository: getIt.get<ProductsRepositoryImpl>()));

  getIt.registerFactory(() => LoginCubit(saveToken: getIt.get<SaveToken>()));
  getIt.registerSingleton(SplashCubit(getToken: getIt.get<GetToken>()));
}
