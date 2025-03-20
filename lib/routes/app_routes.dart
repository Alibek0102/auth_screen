import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRoutes extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    RedirectRoute(path: '/', redirectTo: '/login-email'), // временно
    AutoRoute(
      path: '/login-email',
      page: LoginEmailRoute.page, 
      initial: true
    ),
    AutoRoute(
      path: '/login-password',
      page: LoginPaswordRoute.page,
    ),
    AutoRoute(
      path: '/registration',
      page: RegistrationRoute.page
    ),
    AutoRoute(
      path: '/start',
      page: TabNavigationRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: NotificationsRoute.page),
        AutoRoute(page: PurchasesRoute.page),
        AutoRoute(page: ProfileRoute.page)
      ]
    )
  ];
}