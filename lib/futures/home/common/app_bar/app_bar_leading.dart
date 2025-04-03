import 'package:auth_screen/futures/profile/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 24,
          ),
          child: state.pickture != null
              ? CircleAvatar(
                  backgroundImage: NetworkImage(state.pickture as String),
                )
              : const CircleAvatar(),
        );
      },
    );
  }
}
