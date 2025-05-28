import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
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
        const NotificationsRoute(),
        const PurchasesRoute(),
        const ProfileRoute()
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
              selectedItemColor: AppColors.primaryViolet,
              unselectedItemColor: AppColors.primarySilver,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/images/HomeTab.svg',
                      color: tabsRouter.activeIndex == 0
                          ? AppColors.primaryViolet
                          : AppColors.primarySilver,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/NotificationTab.svg',
                        color: tabsRouter.activeIndex == 1
                            ? AppColors.primaryViolet
                            : AppColors.primarySilver),
                    label: 'Notifications'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/ReceiptTab.svg',
                        color: tabsRouter.activeIndex == 2
                            ? AppColors.primaryViolet
                            : AppColors.primarySilver),
                    label: 'Purchases'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/ProfileTab.svg',
                        color: tabsRouter.activeIndex == 3
                            ? AppColors.primaryViolet
                            : AppColors.primarySilver),
                    label: 'Profile')
              ]),
        );
      },
    );
  }
}
