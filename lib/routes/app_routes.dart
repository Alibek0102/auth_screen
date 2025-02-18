import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRoutes extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    RedirectRoute(path: '/', redirectTo: '/login'), // временно
    AutoRoute(
      path: '/login',
      page: LoginRoute.page, 
      initial: true
    ),
    AutoRoute(
      path: '/registration',
      page: RegistrationRoute.page
    )
  ];
}