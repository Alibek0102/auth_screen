import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRoutes extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/login-email',
      page: LoginEmailRoute.page,
      initial: true
    ),
    AutoRoute(
      page: LoginPaswordRoute.page,
    ),
    AutoRoute(
      path: '/registration',
      page: RegistrationRoute.page
    ),
    AutoRoute(
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