import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRoutes extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(path: '/login-email', page: LoginEmailRoute.page),
        AutoRoute(
          path: '/login-password',
          page: LoginPaswordRoute.page,
        ),
        AutoRoute(path: '/forgot-password', page: ForgotPasswordRoute.page),
        AutoRoute(path: '/registration', page: RegistrationRoute.page),
        AutoRoute(
            // initial: true,
            path: '/start',
            page: TabNavigationRoute.page,
            children: [
              AutoRoute(page: HomeRoute.page),
              AutoRoute(page: NotificationsRoute.page),
              AutoRoute(page: PurchasesRoute.page),
              AutoRoute(page: ProfileRoute.page)
            ]),
        AutoRoute(page: CategoryDetailsRoute.page),
        AutoRoute(page: CartRoute.page, path: '/cart'),
        AutoRoute(page: CheckoutRoute.page, path: '/checkout')
      ];
}
