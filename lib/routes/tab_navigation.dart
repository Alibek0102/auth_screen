import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class TabNavigationScreen extends StatelessWidget {
  const TabNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: [
        HomeRoute(),
        NotificationsRoute(),
        PurchasesRoute(),
        ProfileRoute()
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            selectedItemColor: AppColors.primary_violet,
            unselectedItemColor: AppColors.primary_silver,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.notifications, size: 30), label: 'Notifications'),
              BottomNavigationBarItem(icon: Icon(Icons.receipt_long, size: 30), label: 'Purchases'),
              BottomNavigationBarItem(icon: Icon(Icons.person, size: 30), label: 'Profile')
            ]
          ),
        );
      },
    );
  }
}