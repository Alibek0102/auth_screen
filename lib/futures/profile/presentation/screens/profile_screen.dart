import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/profile/presentation/blocs/profile_bloc.dart';
import 'package:auth_screen/futures/profile/presentation/common/profile_action_item.dart';
import 'package:auth_screen/futures/profile/presentation/common/user_info_view.dart';
import 'package:auth_screen/futures/splash_screen/presentation/blocs/splash_cubit.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: getIt.get<ProfileBloc>(),
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: SafeArea(
                    child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        100.height,
                        SizedBox(
                            width: 80,
                            height: 80,
                            child: ClipOval(
                              child: Image.network(
                                state.user?.picture ?? '',
                                fit: BoxFit.cover,
                                width: 40.0,
                                height: 40.0,
                              ),
                            )),
                        32.height,
                        UserInfoView(user: state.user),
                        32.height,
                        const ProfileActionItem(
                          title: 'Wishlist',
                        ),
                        8.height,
                        const ProfileActionItem(
                          title: 'Payment',
                        ),
                        8.height,
                        const ProfileActionItem(
                          title: 'Support',
                        )
                      ],
                    ),
                  ),
                )),
              ),
              BlocConsumer<SplashCubit, SplashState>(
                bloc: getIt.get<SplashCubit>(),
                listener: (context, state) {
                  state.whenOrNull(
                    unauthorized: () {
                      context.router.replaceAll([LoginEmailRoute()]);
                    },
                  );
                },
                builder: (context, state) {
                  return TextButton(
                      onPressed: () {
                        getIt.get<SplashCubit>().onRemoveToken();
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ));
                },
              ),
              15.height,
            ],
          ),
        );
      },
    );
  }
}
