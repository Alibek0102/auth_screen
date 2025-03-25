import 'package:auth_screen/core/validators/login_validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_email_bloc_event.dart';
part 'login_email_bloc_state.dart';

class LoginEmailBloc extends Bloc<LoginEmailBlocEvent, LoginEmailBlocState> with LoginValidators {
  LoginEmailBloc() : super(LoginEmaiBlocInitialState()) {
    on<EmailChangeEvent>((event, emit) {
      final email = event.email;
      emit(EmailChangedState(email: email));
    });

    on<ConfirmEmailEvent>((_, emit) {
      final currentState = (state as EmailChangedState);

      if(!isValidEmail(currentState.email)) {
        emit(currentState.copyWith(isInvalidEmail: true));
      } else {
        emit(ConfirmEmailState(email: currentState.email));
      }
    });
  }
}