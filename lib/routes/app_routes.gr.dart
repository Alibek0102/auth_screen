// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth_screen/futures/authentification/forgot_password/screen/forgot_password_screen.dart'
    as _i4;
import 'package:auth_screen/futures/authentification/login/presentation/screen/login_email_screen.dart'
    as _i6;
import 'package:auth_screen/futures/authentification/login/presentation/screen/login_pasword_screen.dart'
    as _i7;
import 'package:auth_screen/futures/authentification/registration/screen/registration_screen.dart'
    as _i13;
import 'package:auth_screen/futures/cart/presentation/screens/cart_screen.dart'
    as _i1;
import 'package:auth_screen/futures/category_details/screen/category_details_screen.dart'
    as _i2;
import 'package:auth_screen/futures/checkout/presentation/screens/checkout_screen.dart'
    as _i3;
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart'
    as _i19;
import 'package:auth_screen/futures/home/screen/home_screen.dart' as _i5;
import 'package:auth_screen/futures/notifications/screen/notifications_screen.dart'
    as _i8;
import 'package:auth_screen/futures/orders/presentation/screens/orders_screen.dart'
    as _i9;
import 'package:auth_screen/futures/orders/presentation/screens/success_order_screen.dart'
    as _i15;
import 'package:auth_screen/futures/product_details/presentation/screens/product_details_screen.dart'
    as _i10;
import 'package:auth_screen/futures/profile/screen/profile_screen.dart' as _i11;
import 'package:auth_screen/futures/purchases/screen/purchases_screen.dart'
    as _i12;
import 'package:auth_screen/futures/splash_screen/presentation/screens/splash_screen.dart'
    as _i14;
import 'package:auth_screen/routes/tab_navigation.dart' as _i16;
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;

/// generated route for
/// [_i1.CartScreen]
class CartRoute extends _i17.PageRouteInfo<void> {
  const CartRoute({List<_i17.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i1.CartScreen();
    },
  );
}

/// generated route for
/// [_i2.CategoryDetailsScreen]
class CategoryDetailsRoute
    extends _i17.PageRouteInfo<CategoryDetailsRouteArgs> {
  CategoryDetailsRoute({
    _i18.Key? key,
    required String model,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          CategoryDetailsRoute.name,
          args: CategoryDetailsRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryDetailsRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CategoryDetailsRouteArgs>();
      return _i2.CategoryDetailsScreen(
        key: args.key,
        model: args.model,
      );
    },
  );
}

class CategoryDetailsRouteArgs {
  const CategoryDetailsRouteArgs({
    this.key,
    required this.model,
  });

  final _i18.Key? key;

  final String model;

  @override
  String toString() {
    return 'CategoryDetailsRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i3.CheckoutScreen]
class CheckoutRoute extends _i17.PageRouteInfo<void> {
  const CheckoutRoute({List<_i17.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i3.CheckoutScreen();
    },
  );
}

/// generated route for
/// [_i4.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i17.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    _i18.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          ForgotPasswordRoute.name,
          args: ForgotPasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgotPasswordRouteArgs>(
          orElse: () => const ForgotPasswordRouteArgs());
      return _i4.ForgotPasswordScreen(key: args.key);
    },
  );
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.LoginEmailScreen]
class LoginEmailRoute extends _i17.PageRouteInfo<LoginEmailRouteArgs> {
  LoginEmailRoute({
    _i18.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          LoginEmailRoute.name,
          args: LoginEmailRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginEmailRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginEmailRouteArgs>(
          orElse: () => const LoginEmailRouteArgs());
      return _i6.LoginEmailScreen(key: args.key);
    },
  );
}

class LoginEmailRouteArgs {
  const LoginEmailRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'LoginEmailRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.LoginPaswordScreen]
class LoginPaswordRoute extends _i17.PageRouteInfo<void> {
  const LoginPaswordRoute({List<_i17.PageRouteInfo>? children})
      : super(
          LoginPaswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPaswordRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i7.LoginPaswordScreen();
    },
  );
}

/// generated route for
/// [_i8.NotificationsScreen]
class NotificationsRoute extends _i17.PageRouteInfo<void> {
  const NotificationsRoute({List<_i17.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i8.NotificationsScreen();
    },
  );
}

/// generated route for
/// [_i9.OrdersScreen]
class OrdersRoute extends _i17.PageRouteInfo<void> {
  const OrdersRoute({List<_i17.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i9.OrdersScreen();
    },
  );
}

/// generated route for
/// [_i10.ProductDetailsScreen]
class ProductDetailsRoute extends _i17.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    _i18.Key? key,
    required _i19.ProductEntity product,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsRouteArgs>();
      return _i10.ProductDetailsScreen(
        key: args.key,
        product: args.product,
      );
    },
  );
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.product,
  });

  final _i18.Key? key;

  final _i19.ProductEntity product;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i11.ProfileScreen]
class ProfileRoute extends _i17.PageRouteInfo<void> {
  const ProfileRoute({List<_i17.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i11.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i12.PurchasesScreen]
class PurchasesRoute extends _i17.PageRouteInfo<void> {
  const PurchasesRoute({List<_i17.PageRouteInfo>? children})
      : super(
          PurchasesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PurchasesRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i12.PurchasesScreen();
    },
  );
}

/// generated route for
/// [_i13.RegistrationScreen]
class RegistrationRoute extends _i17.PageRouteInfo<RegistrationRouteArgs> {
  RegistrationRoute({
    _i18.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          RegistrationRoute.name,
          args: RegistrationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegistrationRouteArgs>(
          orElse: () => const RegistrationRouteArgs());
      return _i13.RegistrationScreen(key: args.key);
    },
  );
}

class RegistrationRouteArgs {
  const RegistrationRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'RegistrationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.SplashScreen]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i14.SplashScreen();
    },
  );
}

/// generated route for
/// [_i15.SuccessOrderScreen]
class SuccessOrderRoute extends _i17.PageRouteInfo<void> {
  const SuccessOrderRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SuccessOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'SuccessOrderRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i15.SuccessOrderScreen();
    },
  );
}

/// generated route for
/// [_i16.TabNavigationScreen]
class TabNavigationRoute extends _i17.PageRouteInfo<void> {
  const TabNavigationRoute({List<_i17.PageRouteInfo>? children})
      : super(
          TabNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabNavigationRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i16.TabNavigationScreen();
    },
  );
}
