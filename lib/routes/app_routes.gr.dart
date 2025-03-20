// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth_screen/futures/authentification/login/screen/login_email_screen.dart'
    as _i2;
import 'package:auth_screen/futures/authentification/login/screen/login_pasword_screen.dart'
    as _i3;
import 'package:auth_screen/futures/authentification/registration/screen/registration_screen.dart'
    as _i7;
import 'package:auth_screen/futures/home/screen/home_screen.dart' as _i1;
import 'package:auth_screen/futures/notifications/screen/notifications_screen.dart'
    as _i4;
import 'package:auth_screen/futures/profile/screen/profile_screen.dart' as _i5;
import 'package:auth_screen/futures/purchases/screen/purchases_screen.dart'
    as _i6;
import 'package:auth_screen/routes/tab_navigation.dart' as _i8;
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.LoginEmailScreen]
class LoginEmailRoute extends _i9.PageRouteInfo<void> {
  const LoginEmailRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginEmailRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginEmailScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginPaswordScreen]
class LoginPaswordRoute extends _i9.PageRouteInfo<void> {
  const LoginPaswordRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginPaswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPaswordRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginPaswordScreen();
    },
  );
}

/// generated route for
/// [_i4.NotificationsScreen]
class NotificationsRoute extends _i9.PageRouteInfo<void> {
  const NotificationsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.NotificationsScreen();
    },
  );
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i6.PurchasesScreen]
class PurchasesRoute extends _i9.PageRouteInfo<void> {
  const PurchasesRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PurchasesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PurchasesRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.PurchasesScreen();
    },
  );
}

/// generated route for
/// [_i7.RegistrationScreen]
class RegistrationRoute extends _i9.PageRouteInfo<RegistrationRouteArgs> {
  RegistrationRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          RegistrationRoute.name,
          args: RegistrationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegistrationRouteArgs>(
          orElse: () => const RegistrationRouteArgs());
      return _i7.RegistrationScreen(key: args.key);
    },
  );
}

class RegistrationRouteArgs {
  const RegistrationRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'RegistrationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.TabNavigationScreen]
class TabNavigationRoute extends _i9.PageRouteInfo<void> {
  const TabNavigationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          TabNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabNavigationRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.TabNavigationScreen();
    },
  );
}
