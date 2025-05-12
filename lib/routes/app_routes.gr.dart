// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth_screen/futures/authentification/login/screen/login_email_screen.dart'
    as _i3;
import 'package:auth_screen/futures/authentification/login/screen/login_pasword_screen.dart'
    as _i4;
import 'package:auth_screen/futures/authentification/registration/screen/registration_screen.dart'
    as _i8;
import 'package:auth_screen/futures/category_details/screen/category_details_screen.dart'
    as _i1;
import 'package:auth_screen/futures/home/screen/home_screen.dart' as _i2;
import 'package:auth_screen/futures/notifications/screen/notifications_screen.dart'
    as _i5;
import 'package:auth_screen/futures/profile/screen/profile_screen.dart' as _i6;
import 'package:auth_screen/futures/purchases/screen/purchases_screen.dart'
    as _i7;
import 'package:auth_screen/routes/tab_navigation.dart' as _i9;
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

/// generated route for
/// [_i1.CategoryDetailsScreen]
class CategoryDetailsRoute
    extends _i10.PageRouteInfo<CategoryDetailsRouteArgs> {
  CategoryDetailsRoute({
    _i11.Key? key,
    required String model,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          CategoryDetailsRoute.name,
          args: CategoryDetailsRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryDetailsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CategoryDetailsRouteArgs>();
      return _i1.CategoryDetailsScreen(
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

  final _i11.Key? key;

  final String model;

  @override
  String toString() {
    return 'CategoryDetailsRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i2.HomeScreen(key: args.key);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.LoginEmailScreen]
class LoginEmailRoute extends _i10.PageRouteInfo<void> {
  const LoginEmailRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginEmailRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginEmailScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginPaswordScreen]
class LoginPaswordRoute extends _i10.PageRouteInfo<void> {
  const LoginPaswordRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginPaswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPaswordRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginPaswordScreen();
    },
  );
}

/// generated route for
/// [_i5.NotificationsScreen]
class NotificationsRoute extends _i10.PageRouteInfo<void> {
  const NotificationsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i5.NotificationsScreen();
    },
  );
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i7.PurchasesScreen]
class PurchasesRoute extends _i10.PageRouteInfo<void> {
  const PurchasesRoute({List<_i10.PageRouteInfo>? children})
      : super(
          PurchasesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PurchasesRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.PurchasesScreen();
    },
  );
}

/// generated route for
/// [_i8.RegistrationScreen]
class RegistrationRoute extends _i10.PageRouteInfo<RegistrationRouteArgs> {
  RegistrationRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          RegistrationRoute.name,
          args: RegistrationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegistrationRouteArgs>(
          orElse: () => const RegistrationRouteArgs());
      return _i8.RegistrationScreen(key: args.key);
    },
  );
}

class RegistrationRouteArgs {
  const RegistrationRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'RegistrationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.TabNavigationScreen]
class TabNavigationRoute extends _i10.PageRouteInfo<void> {
  const TabNavigationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          TabNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabNavigationRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.TabNavigationScreen();
    },
  );
}
