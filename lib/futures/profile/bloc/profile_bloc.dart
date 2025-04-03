import 'package:auth_screen/futures/profile/data/repository/user_repository.dart';
import 'package:auth_screen/futures/profile/domain/entity/user_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserRepository userRepository;

  ProfileBloc({required this.userRepository}) : super(ProfileState()) {
    on<FetchProfile>((_, emit) async {
      try {
        UserEntity user = await userRepository.fetchUser();
        emit(ProfileState(pickture: user.pickture));
      } catch (_) {
        print('user failed');
      }
    });
  }
}
