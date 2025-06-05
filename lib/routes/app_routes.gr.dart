// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth_screen/futures/authentification/forgot_password/screen/forgot_password_screen.dart'
    as _i3;
import 'package:auth_screen/futures/authentification/login/presentation/screen/login_email_screen.dart'
    as _i5;
import 'package:auth_screen/futures/authentification/login/presentation/screen/login_pasword_screen.dart'
    as _i6;
import 'package:auth_screen/futures/authentification/registration/screen/registration_screen.dart'
    as _i10;
import 'package:auth_screen/futures/cart/presentation/screens/cart_screen.dart'
    as _i1;
import 'package:auth_screen/futures/category_details/screen/category_details_screen.dart'
    as _i2;
import 'package:auth_screen/futures/home/screen/home_screen.dart' as _i4;
import 'package:auth_screen/futures/notifications/screen/notifications_screen.dart'
    as _i7;
import 'package:auth_screen/futures/profile/screen/profile_screen.dart' as _i8;
import 'package:auth_screen/futures/purchases/screen/purchases_screen.dart'
    as _i9;
import 'package:auth_screen/futures/splash_screen/presentation/screens/splash_screen.dart'
    as _i11;
import 'package:auth_screen/routes/tab_navigation.dart' as _i12;
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

/// generated route for
/// [_i1.CartScreen]
class CartRoute extends _i13.PageRouteInfo<void> {
  const CartRoute({List<_i13.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i1.CartScreen();
    },
  );
}

/// generated route for
/// [_i2.CategoryDetailsScreen]
class CategoryDetailsRoute
    extends _i13.PageRouteInfo<CategoryDetailsRouteArgs> {
  CategoryDetailsRoute({
    _i14.Key? key,
    required String model,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          CategoryDetailsRoute.name,
          args: CategoryDetailsRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryDetailsRoute';

  static _i13.PageInfo page = _i13.PageInfo(
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

  final _i14.Key? key;

  final String model;

  @override
  String toString() {
    return 'CategoryDetailsRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i3.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i13.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ForgotPasswordRoute.name,
          args: ForgotPasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgotPasswordRouteArgs>(
          orElse: () => const ForgotPasswordRouteArgs());
      return _i3.ForgotPasswordScreen(key: args.key);
    },
  );
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.LoginEmailScreen]
class LoginEmailRoute extends _i13.PageRouteInfo<LoginEmailRouteArgs> {
  LoginEmailRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          LoginEmailRoute.name,
          args: LoginEmailRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginEmailRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginEmailRouteArgs>(
          orElse: () => const LoginEmailRouteArgs());
      return _i5.LoginEmailScreen(key: args.key);
    },
  );
}

class LoginEmailRouteArgs {
  const LoginEmailRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'LoginEmailRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.LoginPaswordScreen]
class LoginPaswordRoute extends _i13.PageRouteInfo<void> {
  const LoginPaswordRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginPaswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPaswordRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i6.LoginPaswordScreen();
    },
  );
}

/// generated route for
/// [_i7.NotificationsScreen]
class NotificationsRoute extends _i13.PageRouteInfo<void> {
  const NotificationsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i7.NotificationsScreen();
    },
  );
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i8.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i9.PurchasesScreen]
class PurchasesRoute extends _i13.PageRouteInfo<void> {
  const PurchasesRoute({List<_i13.PageRouteInfo>? children})
      : super(
          PurchasesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PurchasesRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i9.PurchasesScreen();
    },
  );
}

/// generated route for
/// [_i10.RegistrationScreen]
class RegistrationRoute extends _i13.PageRouteInfo<RegistrationRouteArgs> {
  RegistrationRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          RegistrationRoute.name,
          args: RegistrationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegistrationRouteArgs>(
          orElse: () => const RegistrationRouteArgs());
      return _i10.RegistrationScreen(key: args.key);
    },
  );
}

class RegistrationRouteArgs {
  const RegistrationRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'RegistrationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.SplashScreen]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.SplashScreen();
    },
  );
}

/// generated route for
/// [_i12.TabNavigationScreen]
class TabNavigationRoute extends _i13.PageRouteInfo<void> {
  const TabNavigationRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TabNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabNavigationRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i12.TabNavigationScreen();
    },
  );
}
