import 'package:auth_screen/core/dio_client.dart';
import 'package:auth_screen/core/location_client.dart';
import 'package:auth_screen/futures/authentification/login/presentation/blocs/login_cubit.dart';
import 'package:auth_screen/futures/cart/data/models/cart_product_model.dart';
import 'package:auth_screen/futures/cart/presentation/%20blocs/cart_cubit.dart';
import 'package:auth_screen/futures/category_details/bloc/category_details_bloc.dart';
import 'package:auth_screen/futures/checkout/data/datasources/location_address_datasource.dart';
import 'package:auth_screen/futures/checkout/data/repositories/location_address_repository_impl.dart';
import 'package:auth_screen/futures/checkout/domain/usecases/get_address_usecases.dart';
import 'package:auth_screen/futures/checkout/presentation/blocs/address_bloc/address_cubit.dart';
import 'package:auth_screen/futures/checkout/presentation/blocs/payment_bloc/payment_cubit.dart';
import 'package:auth_screen/futures/home/bloc/catagories/categories_bloc.dart';
import 'package:auth_screen/futures/home/bloc/products/products_bloc.dart';
import 'package:auth_screen/futures/home/data/model/product_model.dart';
import 'package:auth_screen/futures/home/domain/repository/category_repository_impl.dart';
import 'package:auth_screen/futures/home/domain/repository/products_repository_impl.dart';
import 'package:auth_screen/futures/orders/data/datasource/order_datasource.dart';
import 'package:auth_screen/futures/orders/data/models/order_model.dart';
import 'package:auth_screen/futures/orders/data/repository/order_repository_impl.dart';
import 'package:auth_screen/futures/orders/domain/use_case/create_order_use_case.dart';
import 'package:auth_screen/futures/orders/domain/use_case/get_orders_use_case.dart';
import 'package:auth_screen/futures/orders/presentation/blocs/orders_bloc/orders_cubit.dart';
import 'package:auth_screen/futures/product_details/presentation/blocs/details_cubit.dart';
import 'package:auth_screen/futures/profile/bloc/profile_bloc.dart';
import 'package:auth_screen/futures/profile/domain/repository/user_repository_impl.dart';
import 'package:auth_screen/futures/splash_screen/data/datasources/token_datasource.dart';
import 'package:auth_screen/futures/splash_screen/data/repositories/token_repository_impl.dart';
import 'package:auth_screen/futures/splash_screen/domain/use_cases/get_token.dart';
import 'package:auth_screen/futures/splash_screen/domain/use_cases/save_token.dart';
import 'package:auth_screen/futures/splash_screen/presentation/blocs/splash_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive_flutter/hive_flutter.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // clients
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(OrderModelAdapter());
    Hive.registerAdapter(CartProductModelAdapter());
    Hive.registerAdapter(ProductModelAdapter());
  }
  final orderBox = await Hive.openBox<OrderModel>('order3');

  getIt.registerSingleton(orderBox);

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  getIt.registerSingleton(DioClient());
  getIt.registerSingleton(LocationClient());

  // datasources
  getIt.registerFactory(() =>
      TokenDatasource(sharedPreferencesClient: getIt.get<SharedPreferences>()));
  getIt.registerFactory(() =>
      LocationAddressDatasource(dioClient: getIt.get<DioClient>().instance));
  getIt.registerFactory(
      () => OrderDatasourceImpl(orderBox: getIt.get<Box<OrderModel>>()));

  // repositories
  getIt.registerFactory(
      () => TokenRepositoryImpl(tokenDatasource: getIt.get<TokenDatasource>()));

  getIt.registerFactory(
      () => UserRepositoryImpl(client: getIt.get<DioClient>().instance));
  getIt.registerFactory(
      () => CategoryRepositoryImpl(client: getIt.get<DioClient>().instance));
  getIt.registerFactory(
      () => ProductsRepositoryImpl(client: getIt.get<DioClient>().instance));
  getIt.registerFactory(() => LocationAddressRepositoryImpl(
      locationAddressDatasource: getIt.get<LocationAddressDatasource>()));

  getIt.registerFactory(() =>
      OrderRepositoryImpl(orderDatasource: getIt.get<OrderDatasourceImpl>()));

  // use cases
  getIt.registerFactory(
      () => GetToken(tokenRepository: getIt.get<TokenRepositoryImpl>()));
  getIt.registerFactory(
      () => SaveToken(tokenRepository: getIt.get<TokenRepositoryImpl>()));
  getIt.registerFactory(() => GetAddressUsecases(
      locationAddressRepository: getIt.get<LocationAddressRepositoryImpl>()));
  getIt.registerFactory(() =>
      CreateOrderUseCase(orderRepository: getIt.get<OrderRepositoryImpl>()));
  getIt.registerFactory(() =>
      GetOrdersUseCase(orderRepository: getIt.get<OrderRepositoryImpl>()));

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
  getIt.registerSingleton(CartCubit());

  getIt.registerFactory(() => DetailsCubit());

  getIt.registerFactory(() => AddressCubit(
      locationClient: getIt.get<LocationClient>().location,
      getAddressUsecases: getIt.get<GetAddressUsecases>()));
  getIt.registerFactory(() => PaymentCubit());

  getIt.registerFactory(() => OrdersCubit(
      createOrderUseCase: getIt.get<CreateOrderUseCase>(),
      getOrdersUseCase: getIt.get<GetOrdersUseCase>()));
}
